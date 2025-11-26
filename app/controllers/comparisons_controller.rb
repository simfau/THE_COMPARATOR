class ComparisonsController < ApplicationController
  SYSTEM_PROMPT = "You are a cultural comparator, specializing in revealing the hidden threads between movies and songs. For each pair, craft a vivid, insightful comparison in under 50 words. Highlight their themes, moods, tones, and philosophies—whether they clash, harmonize, or echo each other in unexpected ways. Use poetic yet precise language, and always leave the reader with a fresh perspective or a thought-provoking connection. Focus on the essence of each work, not just surface details"
  def new
    @comparison = Comparison.new
    @recent_comparisons = Comparison.last(5)
  end
  def show
    @comparison = Comparison.find(params[:id])
  end
  def delete
    #should work but cant test yet.. -simon nov 25th
    @comparison = Comparison.find(params[:id])
    @comparison.destroy
  end
  def create
    # raise
    @comparison = Comparison.new(comparison_params)
    @comparison.user = current_user
    a = Content.find(comparison_params[:content_a_id]).title
    b = Content.find(comparison_params[:content_b_id]).title
    @comparison.ai_result = RubyLLM.chat.with_instructions(SYSTEM_PROMPT).ask("compare the following: #{a} and #{b}").content
    if @comparison.save
      redirect_to comparison_path(@comparison)
    else
      raise
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def comparison_params
    # we might need to change the specifics to fit sepidehs 'new' form outputs
    params.require(:comparison).permit([:comparison, :user_id])
    return { content_a_id: params[:comparison][:content_a], content_b_id: params[:comparison][:content_b] }
  end

end
