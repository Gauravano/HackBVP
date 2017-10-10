class HomeController < ApplicationController
	before_action :authenticate_user!, only: [:index]

	def index
		@user = Userdetail.where(user_id: current_user.id)
		byebug
		unless(@user[0])
			redirect_to '/userdetails/new'
		end
	end

	def homepage
	end
end
