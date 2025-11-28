class ComparisonsController < ApplicationController
  before_action :authenticate_user!
  SYSTEM_PROMPT = "You are a cultural comparator,
  specializing in revealing the hidden threads between movies and songs.
  For each pair, craft an insightful comparison in under 75 words.
  Highlight their themes, moods, tones, and philosophies—whether they clash or harmonize.
  Format your answer in markdown"


  def new
    @comparison = Comparison.new
    @content_a_results = []
    @content_b_results = []
  end
def create
  Tmdb::Api.key(ENV["TMDB_API_KEY"])
  RSpotify::authenticate(ENV["SPOTIFY_KEY"], ENV["SPOTIFY_SECRET"])
  @comparison = Comparison.new(comparison_params)
  @comparison.user = current_user

  # Fetch or create content_a (movie)
  content_a = Content.find_by(id: comparison_params[:content_a_id])
  unless content_a
    movie_data = Tmdb::Movie.detail(comparison_params[:content_a_id])
    content_a = Content.create!(
      format: :movie,
      title: movie_data["title"],
      description: movie_data["overview"],
      image_url: "https://image.tmdb.org/t/p/original#{movie_data['poster_path']}",
      year: movie_data["release_date"]&.first(4),
    )
  end

  # Fetch or create content_b (song)
  content_b = Content.find_by(id: comparison_params[:content_b_id])
  unless content_b
    song_data = RSpotify::Track.find(comparison_params[:content_b_id])
    content_b = Content.create!(
      format: :song,
      title: song_data.name,
      description: Faker::Lorem.sentence(word_count: 40),  # Or use song_data description if available
      image_url: song_data.album.images.first["url"],
      creator: song_data.album.artists.first.name,
      year: song_data.album.release_date&.first(4),
    )
  end

  # Update the comparison with the content IDs
  @comparison.content_a_id = content_a.id
  @comparison.content_b_id = content_b.id

  # Generate AI result
  begin
    ai_prompt = "Compare the following: #{content_a.title} (#{content_a.year}) and #{content_b.title} (#{content_b.year})"
    @comparison.ai_result = RubyLLM.chat.with_instructions(SYSTEM_PROMPT).ask(ai_prompt).content
  rescue => e
    Rails.logger.error "AI generation failed: #{e.message}"
    redirect_to root_path, alert: "Failed to generate comparison. Please try again."
    return
  end

  if @comparison.save
    redirect_to comparison_path(@comparison), notice: "Comparison created successfully!"
  else
    Rails.logger.error "Failed to save comparison: #{@comparison.errors.full_messages}"
    render :new, status: :unprocessable_entity
  end
end


  def show
    @comparison = Comparison.find(params[:id])
  end

  def destroy
    @comparison = Comparison.find(params[:id])
    @comparison.destroy
    redirect_to root_path, notice: "Comparison deleted successfully!"
  end

def search_contents
  if params[:movie_query].present? && params[:movie_query].length >= 2
    encoded_query = URI.encode_www_form_component(params[:movie_query])
    response = Faraday.get(
      "https://api.themoviedb.org/3/search/movie?query=#{encoded_query}&include_adult=false&language=en-US&page=1",
      {}, { 'Authorization' => "Bearer #{ENV['TMDB_BEARER']}", 'Accept' => 'application/json' }
    )
    render json: JSON.parse(response.body)
  elsif params[:song_query].present? && params[:song_query].length >= 2
    response = Faraday.post(
      "https://accounts.spotify.com/api/token",
      {
        grant_type: "client_credentials",
        client_id: ENV["SPOTIFY_KEY"],
        client_secret: ENV["SPOTIFY_SECRET"]
      },
      { 'Content-Type' => "application/x-www-form-urlencoded", "Accept" => "application/json" }
    )

    access_token = JSON.parse(response.body)["access_token"]

    encoded_query = URI.encode_www_form_component(params[:song_query])
    response = Faraday.get(
      "https://api.spotify.com/v1/search?q=#{encoded_query}&type=track&market=US&limit=5",
      {}, { 'Authorization' => "Bearer #{access_token}", 'Accept' => 'application/json' }
    )
    render json: JSON.parse(response.body)
  else
    render json: { results: [] }
  end
end


  private

  def comparison_params
    params.require(:comparison).permit(:content_a_id, :content_b_id)
  end
end
