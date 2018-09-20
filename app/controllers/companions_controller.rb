class CompanionController < ApplicationController

def update_accompaning_people
  @guests = Guest.all
  @accompaning_persons_numbers = AccompaningPersonsNumber.all
  @companion = Companion.find_by(id: params[:companion][:companion_id])
  @companion.update_attributes(accompaning_people_params)


end

def edit_accompaning_people
  @guests = Guest.all
  @accompaning_persons_numbers = AccompaningPersonsNumber.all
end

def accompaning_people_params
   params.require(:companion).permit(:accompaning_persons_number_id)
end

end
