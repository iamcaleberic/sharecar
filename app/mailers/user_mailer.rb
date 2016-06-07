class UserMailer < ApplicationMailer
	 default from: 'no-reply@sharecar.io'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://40.113.121.30/users/sign_in'
    mail(from:"no-reply@sharecar.io", to: @user.email, subject: 'Welcome to Sharecar',sent_on: Time.now)
  end
   def update_email(user)
    @user = user
    @url  = 'http://40.113.121.30/users/sign_in'
    mail(from:"no-reply@sharecar.io", to: @user.email, subject: ' Sharecar ', sent_on: Time.now)
  end
end
