class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def apresentation_page
  end
end
