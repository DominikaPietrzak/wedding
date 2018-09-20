class EventAdressesController < InheritedResources::Base

  before_action :authenticate_admin_user!

  def index
    @event_adresses = EventAdress.all
  end

  def new
    @events = Event.all
    @event_adress = EventAdress.new
  end

  def create
    @events = Event.all
    @event_adress = EventAdress.new(event_adress_params)
    @event_adress.save
  end

  def update
    @events = Event.all
        @event_adress = EventAdress.find(params[:id])
        @event_adress.update_attributes(event_adress_params)
  end

  def edit
    @events = Event.all
    @event_adress = EventAdress.find(params[:id])
  end


  private

    def event_adress_params
      params.require(:event_adress).permit(:home_number, :town, :code, :state, :event_id)
    end
end
