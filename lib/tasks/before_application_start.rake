namespace :before_application_start do

  desc "TODO"
  task create_event_attendance: :environment do
    EventAttendance.create_event_attendance_for_event_and_guest
  end

  desc "TODO"
  task create_companions: :environment do
    Companion.create_accompaning_person
  end

  desc "TODO"
  task create_confirmation: :environment do
    EaGuestConfirmation.create_event_and_guest_confirmation
  end

  desc "TODO"
  task create_newlywed_guest_list: :environment do
    NewlywedGuestList.create_guest_lists
  end
end
