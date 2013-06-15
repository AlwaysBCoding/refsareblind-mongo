class PoolsController < AuthenticatedController
	before_action :set_pool, only: [:show, :payment, :post_payment]

	def new
	end

	def create
		pool = Pool.new pool_params
		pool.owner = @current_user.id
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

private
	def pool_params
		params.require(:pool).permit(:name, :pool_type_id, :slug, :access_code, :owner)
	end

	def set_pool
		@pool = Pool.find_by(slug: params[:id])
	end

end
