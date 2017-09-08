class ContactsController < ApplicationController

  def index 
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end 

  def create
    @contact = Contact.new({
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      latitude: Geocoder.coordinates(params[:address])[0],
      longitude: Geocoder.coordinates(params[:address])[1]
      })
    @contact.save
    render "create.html.erb"
  end 

  def show 
    @contact = Contact.find(params[:id])
    render "show.html.erb"
  end 

  def edit
    @contact = Contact.find(params[:id])
    render "edit.html.erb"
  end 

  def update 
    @contact = Contact.find(params[:id])
    @contact.update({
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio]
      })
    render "update.html.erb"
  end 

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render "destroy.html.erb"
  end 

end 





