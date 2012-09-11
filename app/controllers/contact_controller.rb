class ContactController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])

  	if @contact.save
  		redirect_to root_path, :notice => "Message was successfully sent."
  	else
  		flash.now.alert = "Please fill all fields"

      render :new
  	end
  end
end
