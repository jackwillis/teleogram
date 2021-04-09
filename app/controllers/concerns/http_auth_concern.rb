module HttpAuthConcern  
  extend ActiveSupport::Concern

  included do
    before_action :http_authenticate
  end

  # Use HTTP Basic Authentication -
  # one set of credentials per application instance;
  # credentials are set from environment variables,
  # see config/application.rb
  def http_authenticate
    # Don't ask for password in development
    return true if Rails.env == "development"

    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.configuration.x.http_username && \
      password == Rails.configuration.x.http_password
    end
  end
end