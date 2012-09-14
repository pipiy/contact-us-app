class ContactMailer < ActionMailer::Base
  default from: "artem.slabodnik@gmail.com"

  def new_contact(contact)
  	@contact = contact
  	mail(:to => "artem.slabodnik@gmail.com", :subject => "Contact Us")
  end
end
