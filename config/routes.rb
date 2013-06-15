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
		get "payment", on: :member
		post "post_payment", on: :member
		get "admin", on: :member
		get "join", on: :member
	end

# ENTRIES
	resources :entries, only: [:create, :edit] do
		post "approve", on: :member
		post "remove_approval", on: :member
	end

# # # PICKS
# #   get "/pools/:slug/picks/new" => "nfl_picks#new", as: :new_pick
# #   post "/pools/:slug/picks/update_unlocked_survival_pick" => "nfl_picks#update_unlocked_survival_pick", as: :update_unlocked_survival_pick

# DEBUG ROUTES - TURN OFF ON PRODUCTION
	get "/view_sessions" => "dev#view_sessions"

end
