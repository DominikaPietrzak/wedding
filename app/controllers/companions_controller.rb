class CompanionsController < ApplicationController

def update_accompaning_people
  @guests = Guest.all

  @companion = Companion.find_by(id: params[:companion][:companion_id])
  @companion.update_attributes(accompaning_people_params)
end

def edit_accompaning_people
  @guests = Guest.all

end

def accompaning_people_params
   params.require(:companion).permit(:number)
end

end
