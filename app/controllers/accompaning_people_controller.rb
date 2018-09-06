class AccompaningPeopleController < ApplicationController

def update_accompaning_people
  @guests = Guest.all
  @accompaning_persons_numbers = AccompaningPersonsNumber.all
  @accompaning_person = AccompaningPerson.find_by(id: params[:accompaning_person][:accompanig_person_id])
  @accompaning_person.update_attributes(accompaning_people_params)


end

def edit_accompaning_people
  @guests = Guest.all
  @accompaning_persons_numbers = AccompaningPersonsNumber.all
end

def accompaning_people_params
   params.require(:accompaning_person).permit(:accompaning_persons_number_id)
end

end
