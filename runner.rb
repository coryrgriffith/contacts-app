require 'unirest'

# create
# response = Unirest.post("localhost:3000/api/contacts",
#   parameters: {
#     input_first_name: "Rita",
#     input_last_name: "Cheng",
#     input_email: "rcheng@siu.edu",
#     input_phone_number: "7624212"
#   }
# )
# p response.body

#update
# p "Which contact would you like to update?"
# contact_id = gets.chomp
# response = Unirest.patch("localhost:3000/api/contacts/#{contact_id}",
#   parameters: {
#     # input_first_name: "MaryLou",
#     # input_last_name: "Freebush",
#     # input_email: "NotAnAgent@fbi.com",
#     input_phone_number: "8675309"
#   }
# )
# p response.body

#destroy
p "which contact would you like to delete? Please enter the contact ID"
contact_id = gets.chomp
response = Unirest.delete("localhost:3000/api/contacts/#{contact_id}")