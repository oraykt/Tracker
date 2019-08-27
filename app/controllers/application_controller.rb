class ApplicationController < ActionController::Base
  # Anyaction on the UI, It will authenticate before all action.
  before_action :authenticate_user!

end
