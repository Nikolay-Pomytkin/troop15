require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Troop15
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
      config.autoload_paths << Rails.root.join('lib')
      config.action_mailer.perform_deliveries = true
      config.action_mailer.raise_delivery_errors = true
  end
end
