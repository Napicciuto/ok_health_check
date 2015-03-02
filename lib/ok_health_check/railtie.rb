require 'rails'

module OkHealthCheck
  class Railtie < ::Rails::Railtie
    config.after_initialize do |app|
      app.routes.prepend do
        mount OkHealthCheck::Server.new, at: '/healthcheck'
      end
    end
  end
end