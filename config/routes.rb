OkHealthCheck::Engine.routes.draw do
  get 'healthcheck', to: 'healthcheck#show'
end