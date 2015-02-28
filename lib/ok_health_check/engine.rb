require 'rails'

module OkHealthCheck
  class Engine < ::Rails::Engine
    isolate_namespace OkHealthCheck

    config.after_initialize do |app|
      if OkHealthCheck.modunt_at
        app.routes.prepend do
          get 'healthcheck', to: 'healthcheck#show'
        end
      end
    end
  end
end