# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "apikey",
  :password => "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",
  :domain => 'c9users.io',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}