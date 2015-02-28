require 'spec_helper'

describe HealthcheckController do
  it "check path displays ok" do
    get :show
    expect(response).to be_success
  end
end
