class ComparisonsController < ApplicationController
  def new
    @comparison = Comparison.new
    @recent_comparisons = Comparison.last(5)
  end
end
