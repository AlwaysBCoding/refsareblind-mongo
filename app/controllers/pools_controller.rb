class PoolsController < ApplicationController
	# before_action :require_user, only: [:new, :create, :show]

	def new
	end

	def create
	end

	def index
		@pools = Pool.open_to_public
	end

	def show
	end

end
