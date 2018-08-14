json.id contact.id
json.user_id contact.user_id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.email contact.email
json.phone_number contact.phone_number
json.bio contact.bio
json.created_at contact.created_at
json.updated_at contact.updated_at
json.groups contact.groups

json.formatted do
  json.updated_at contact.updated_month_day_year
  json.first_and_last_name contact.full_name
  json.japanese_phone_number contact.japanese_phone_prefix
end