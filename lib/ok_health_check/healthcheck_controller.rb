class HealthcheckController < ActionController::Base
  def show
    render plain: "OK"
  end
end