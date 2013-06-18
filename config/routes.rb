Refsareblind::Application.routes.draw do
  root :to => "pages#homepage"

# SESSIONS
  get "/login" => "sessions#new", as: :login
  post "/login" => "sessions#create", as: :post_login
  get "/logout" => "sessions#destroy", as: :logout

# REGISTRATIONS
  get "/signup" => "registrations#new", as: :signup
  post "/signup" => "registrations#create", as: :post_signup

# USERS
  get "/account" => "users#account", as: :user_account

# POOLS
	resources :pools, only: [:new, :create, :index, :show] do
		member do
			get "payment"
			post "payment" => "pools#post_payment"
			get "admin" => "pools#admin_dashboard"
			get "join"
			post "join" => "pools#post_join"
		end
	# PICKS
		resources :picks, controller: "nfl_picks" do
		end
	end

# ENTRIES
	resources :entries, only: [:create, :edit] do
		post "approve", on: :collection
		post "remove_approval", on: :collection
		post "change_role", on: :collection
	end

# # # PICKS
# #   get "/pools/:slug/picks/new" => "nfl_picks#new", as: :new_pick
# #   post "/pools/:slug/picks/update_unlocked_survival_pick" => "nfl_picks#update_unlocked_survival_pick", as: :update_unlocked_survival_pick

# DEBUG ROUTES - TURN OFF ON PRODUCTION
	get "/view_sessions" => "dev#view_sessions"

end
