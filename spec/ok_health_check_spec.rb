require 'spec_helper'

describe OkHealthCheck::Server do
  include Rack::Test::Methods
  
  def app
    OkHealthCheck::Server.new
  end

  it "check path displays ok" do
    get :show
    expect(last_response).to be_ok
  end
end
