class ContactsController < ApplicationController
  def index
  end

  def new
	@contact = Contact.new
  end

  def create
	@contact = Contact.new(params_contact)
	if @contact.save
	  flash[:success] = "Success Add Record"
	  redirect_to contacts_index_path
	else
	  flash[:error] = "Data Not Valid"
	  render contacts_new_path
	end
  end

  private
  def params_contact
  params.require(:contact).permit(:name, :email, :message)
  end
end
