class Api::ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
      render "index.json.jbuilder"
    else  
      render json: []
    end
    # @contacts = Contact.all
    # render "index.json.jbuilder"
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      user_id: current_user.id,
      first_name: "#{params[:input_first_name]}",
      middle_name: "#{params[:input_middle_name]}",
      last_name: "#{params[:input_last_name]}",
      email: "#{params[:input_email]}",
      phone_number: "#{params[:input_phone_number]}",
      bio: "#{params[:input_bio]}"
    )
    @contact.save
    render "show.json.jbuilder"
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = params[:input_first_name] || @contact.first_name
    @contact.middle_name = params[:input_middle_name] || @contact.middle_name
    @contact.last_name = params[:input_last_name] || @contact.last_name
    @contact.email = params[:input_email] || @contact.email
    @contact.phone_number = params[:input_phone_number] || @contact.phone_number
    @contact.bio = params[:input_bio] || @contact.bio
    @contact.save
    render "show.json.jbuilder"
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render json: {message: "You deleted the contact."}
  end
end
