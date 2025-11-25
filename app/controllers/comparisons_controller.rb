class ComparisonsController < ApplicationController

def delete
  #should work but cant test yet.. -simon nov 25th
  @comparison = Comparison.find(params[:id])
  @comparison.destroy
end

def new
  @comparison = Comparison.new
end

end
