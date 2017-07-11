class AnnouncementsMailer < ActionMailer::Base
  default to: "nik@pomytkin.com"
  
  def announcements_email(title, user_email, user_name, body)
    @title = title
    @user_email = user_email
    @user_name = user_name
    @body = body
    mail(:to => "nik@pomytkin.com", :from => user_email, subject: title)
    puts @body
  end
  
end