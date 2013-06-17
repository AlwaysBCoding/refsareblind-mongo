class PoolsController < AuthenticatedController
	before_action :set_pool, except: [:index, :new, :create]
	before_action :require_entry, only: [:show, :admin_dashboard]

	def new
	end

	def create
		pool = Pool.new pool_params
		pool.configurations = set_pool_configurations(params[:pool])
		if pool.save
			Entry.create! user_id: @current_user.id, pool_id: pool.id, role: "owner", approved: true
			flash[:notice] = "Your pool has successfully been created"
			redirect_to payment_pool_url(pool.slug)
		else
			@errors = pool.errors.full_messages
			render :new
		end
	end

	def payment
		if @pool.payment_settled?
			flash[:error] = "This pool has already been paid for"
			redirect_to pool_url(@pool.slug)
		end
	end

	def post_payment
		user_is_new_customer = @current_user.stripe_customer_id.present? ? false : true ;

		if user_is_new_customer
			begin
				customer = Stripe::Customer.create card: params[:stripeToken], description: @current_user.email
			rescue Exception => e
				raise e.inspect
			end
		end

		begin
			charge = Stripe::Charge.create(
				amount: 4000,
				currency: "usd",
				customer: (user_is_new_customer ? customer.id : @current_user.stripe_customer_id ;)
				)
		rescue Stripe::CardError => e
			raise e.inspect
		end

		@current_user.update_attributes(stripe_customer_id: customer.id) if user_is_new_customer

		@pool.update_attributes(payment_settled: true)
		flash[:notice] = "Your charge has been approved, a receipt will be emailed to you shortly. Welcome to Refs Are Blind"
		redirect_to pool_url(@pool.slug)
	end

	def index
		@pools = Pool.open_to_public
	end

	def show
	end

	def join
	end

	def post_join
		# check_user_eligible_to_join()
		if params[:access_code] == @pool.access_code
			Entry.create(user_id: @current_user.id, pool_id: @pool.id)
			flash[:notice] = "You have successfully joined the pool #{@pool}"
			redirect_to pool_url(@pool.slug)
		else
			flash[:error] = "The access code that you entered is invalid"
			render :join
		end
	end

	def admin_dashboard
	end

private
	def pool_params
		params.require(:pool).permit(:name, :slug, :access_code, :owner, :configurations)
	end

	def set_pool
		@pool = Pool.find_by(slug: params[:id])
		if !@pool.present?
			flash[:notice] = "The pool you are attempting to access does not exist"
			redirect_to user_account_url
		end
	end

	def set_pool_configurations(pool_params)
		case pool_params[:bundle_type]
		when "nfl-survival"
			return Rails.configuration.pool_bundles.select { |bundle| bundle["data_name"] == "nfl-survival" }.first["configurations"]
		when "nfl-supercontest"
			return Rails.configuration.pool_bundles.select { |bundle| bundle["data_name"] == "nfl-supercontest" }.first["configurations"]
		when "roll-custom"
			return pool_params["configurations"]
		end
	end

	def require_entry
		unless @current_user.has_entry_in_pool?(@pool)
			redirect_to join_pool_url(@pool)
		end
	end

	# def check_user_eligible_to_join
	# end

end
