class DevController < ApplicationController

	def view_sessions
		render json: session
	end

end
