class UserMailer < ApplicationMailer
  default from: "j.mircevska@yahoo.com"

  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
        :to => 'j.mircevska@yahoo.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "The Antique Shop"
    mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
  end


end
