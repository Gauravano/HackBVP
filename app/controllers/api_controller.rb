class ApiController < ActionController::API


	def response_data data, message, status, disabled: false
		#check code for updte
		#update =  params["version"].to_i < 10
		
		data = {
			data: data,
			message: message,
			disabled: disabled
		}

		render json: data, status: status
		
	end

	
end