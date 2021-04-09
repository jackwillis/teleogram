ENV["RAILS_ENV"] ||= "test"

require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)
  fixtures :all

  HTTP_AUTHORIZATION = ActionController::HttpAuthentication::Basic.encode_credentials(
    Rails.application.config.x.http_username, Rails.application.config.x.http_password
  )
end
