class AccompaningPeopleController < ApplicationController

def update_accompaning_people
  @accompaning_person = AccompaningPerson.find_by(id: params[:accompaning_person][:id])
  @accompaning_person.update_attributes(accompaning_people_params)
end

def edit_accompaning_people
  @guests = Guest.all
  @accompaning_persons_number = AccompaningPersonsNumber.all
end

def accompaning_people_params
  params.require(:accompanig_person).permit(:accomapnig_persons_number_id)
end

end
