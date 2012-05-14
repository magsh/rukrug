class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :exceptioner
  
  private
  
  def exceptioner
    raise 'I2P unavailable' unless I2P.available?
    raise 'I2P not running' unless I2P.running?
  end
end
