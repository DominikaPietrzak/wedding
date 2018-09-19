class CostListNewlywedsSummaryController < ApplicationController
  def index
    @newlyweds = Newlywed.all
  end
end
