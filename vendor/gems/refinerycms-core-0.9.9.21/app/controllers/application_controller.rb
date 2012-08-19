# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filer :check_for_maintenance
  
  protected
  
  def check_for_maintenance
    logger.debug("Checking Maintenance: #{RAILS_ROOT}")
    if File.exist? "#{RAILS_ROOT}/maintenance.html.erb"
      return render :file => "#{RAILS_ROOT}/maintenance.html.erb" #unless current_user.email == "kevin@wearefound.com"
    end
  end
end
