class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
  	redirect_to '/userdetails/new'
  end

  def homepage
  	
  end
end
