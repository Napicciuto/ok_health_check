require 'spec_helper'

describe HealthcheckController do

  before do
    # Remove existing routes
    routes = Rails.application.routes
    routes.clear!

    # Add scoped routes
    routes.draw do
      get 'healthcheck', to: 'healthcheck#show'
    end
  end

  it "check path displays ok" do
    get :show
    expect(response).to be_success
  end
end