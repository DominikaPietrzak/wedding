class CostListNewlywedsSummaryController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @newlyweds = Newlywed.all
  end
end
