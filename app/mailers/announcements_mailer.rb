class AnnouncementsMailer < ActionMailer::Base
  default to: "nik@pomytkin.com"
  
  def announcements_email(title, user_email, user_name, body)
    @title = title
    @user_email = user_email
    @user_name = user_name
    @body = body
    mail(from: email, subject: ('[Troop 15 Announcements] ' + title))
  end
  
end