# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'

  before_filter :configure_charsets
   
  def configure_charsets
    response.headers["Content-Type"] = "text/html; charset=utf-8" 
    # Set connection charset. MySQL 4.0 doesn’t support this so it 
    # will throw an error, MySQL 4.1 needs this 

    suppress(ActiveRecord::StatementInvalid) do 
      ActiveRecord::Base.connection.execute 'SET NAMES utf8'
    end
  end

end
