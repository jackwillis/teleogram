require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
# require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Teleogram
  class Application < Rails::Application
    config.load_defaults 6.1

    if Rails.env == "production"
      config.x.http_username = ENV.fetch("HTTP_USERNAME") do raise "Missing HTTP_USERNAME in ENV" end
      config.x.http_password = ENV.fetch("HTTP_PASSWORD") do raise "Missing HTTP_PASSWORD in ENV" end
    end
  end
end
