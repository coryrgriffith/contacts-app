# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#you are on the right track.... let me just finish cleaning up your other app

# 100.times do
#   contact = Contact.new(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}", email: "#{Faker::Internet.email}", phone_number: "#{Faker::PhoneNumber.phone_number}")
#   contact.save
# end

# contacts = Contact.all
# users = User.all

# contacts.each do |contact|
#   contact.user_id = users.sample.id
#   contact.save
# end

# associate groups with contacts

contacts = Contact.all
groups = Group.all

contacts.each do |contact|
  first_group = groups.shuffle.pop.id
  second_group = groups.shuffle.pop.id
  ContactGroup.create(contact_id: contact.id, group_id: first_group)
  ContactGroup.create(contact_id: contact.id, group_id: second_group)
end