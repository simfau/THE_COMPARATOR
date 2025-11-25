class ComparisonsController < ApplicationController
  SYSTEM_PROMPT = "You are a cultural comparator, specializing in revealing the hidden threads between movies and songs. For each pair, craft a vivid, insightful comparison in under 50 words. Highlight their themes, moods, tones, and philosophies—whether they clash, harmonize, or echo each other in unexpected ways. Use poetic yet precise language, and always leave the reader with a fresh perspective or a thought-provoking connection. Focus on the essence of each work, not just surface details"

  def delete
    #should work but cant test yet.. -simon nov 25th
    @comparison = Comparison.find(params[:id])
    @comparison.destroy
  end

  def new
    @comparison = Comparison.new
  end

  def create
    @comparison = Comparison.new(comparison_params)
    @comparison.ai_result = RubyLLM.chat.with_instructions(SYSTEM_PROMPT).ask("compare the following: #{comparison_params[:content_a_id]} and #{comparison_params[:content_b_id]}")
    @comparison.user = current_user
    if @comparison.save
      redirect_to comparison_path(@comparison)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def comparison_params
    # we might need to change the specifics to fit sepidehs 'new' form outputs
    params.require(:comparison).permit([:content_a_id, :content_b_id, :user_id])
  end
end
