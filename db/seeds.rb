# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# seed db with Guest
# 10.times do
#   Guest.create([{
#     name: Faker::Name.first_name,
#     surname: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(8),
#     admin_user_id: 1
#     }])
# end
#
# #seed db with events
# Event.create([{
#     name: "wesele",
#     event_date: Faker::Time.between(DateTime.now - 1, DateTime.now),
#     admin_user_id: 1
#   }])
#
# Event.create([{
#   name: "ślub",
#   event_date: Faker::Time.between(DateTime.now - 1, DateTime.now),
#   admin_user_id: 1
#   }])

#EventAttendanceStatus.create([{eastatus: 'no'}, {eastatus: 'yes'}])
#Newlywed.create([{name: 'bride'}, {name: 'groom'}])

 # (0..10).each do |i|
 #   AccompaningPersonsNumber.create([{number: i}])
 # end

# GuestListStatus.create([{status: "no"}, {status: "yes"}])
 GuestConfirmationStatus.create([{status: "no"}, {status: "yes"}, {status: "maybe"}])
