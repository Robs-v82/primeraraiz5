class ContactsController < ApplicationController
  
  def create
  	new_contact = Contact.new(contact_params)
  	if new_contact.valid?
  		new_contact.save
  		session[:new_contact] = true
  	else
  		session[:contact_errors] = new_contact.errors.full_messages
  	end
  	redirect_to '/admins'
  end

  private

  def contact_params
  	params.require(:contact).permit(:first_name, :name, :email, :mobile_phone, :other_phone, :extension, :organization, :state, :language, :institution_id)
  end

end
