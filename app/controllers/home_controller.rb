class HomeController < ApplicationController
  def index
    redirect_to dashbords_path if current_user
  end
end
