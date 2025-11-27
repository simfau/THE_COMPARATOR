# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
require 'themoviedb'
require 'rspotify'

Content.destroy_all
User.destroy_all
Comparison.destroy_all
Tmdb::Api.key(ENV["TMDB_API_KEY"])

5.times do
  faker_movie = Faker::Movie.title
  movie = Tmdb::Movie.find(faker_movie)[0]
  img  = "https://image.tmdb.org/t/p/original#{movie.poster_path}"
  Content.create!({format: :movie, title: movie.title, description: movie.overview, image_url: img})
end

RSpotify::authenticate(ENV["SPOTIFY_KEY"], ENV["SPOTIFY_SECRET"])

5.times do
  faker_song = Faker::Music::Prince.song
  song = RSpotify::Track.search(faker_song)[0]
  img = song.album.images[0]["url"]
  Content.create!({format: :song, title: song.name, description: Faker::Lorem.sentence(word_count: 40), image_url: img})
end

2.times do |i|
  User.create!(
    email: "simfaucher@outlook.com#{i.to_s}",
    password: "123456"
  )
  i += 1
end

2.times do
  Comparison.create!({content_a: Content.all.to_a.sample, content_b: Content.all.to_a.sample, user: User.all.to_a.sample, ai_result: Faker::Lorem.sentence(word_count: 30)})
end
