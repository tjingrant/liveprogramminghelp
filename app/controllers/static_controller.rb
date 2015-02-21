class StaticController < ApplicationController
  def index

  end

  def about
  end

  def payment
	Rails.logger.info("PARAMS: #{params.inspect}")
	render plain: "OK"
  end	
end
