class CostListEventsSummaryController < ApplicationController
  def index
    @events = Event.all
  end
end
