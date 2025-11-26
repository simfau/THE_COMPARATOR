class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :recent_comparisons

  private
  def recent_comparisons
      @recent_comparisons = current_user ? current_user.comparisons.limit(5).order(created_at: :desc) : []
      @title = @recent_comparisons.each { |comparison| puts "#{comparison.content_a.title}+#{comparison.content_b.title}"}
  end
end
