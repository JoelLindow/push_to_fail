Rails.application.routes.draw do
  root to: 'failures#about'

  resources :failures, only: [:index, :new, :create]
  get '/about' => 'failures#about'

  get '/top_failures' => 'failures#dashboard'

  get '/all_failures' => 'failures#index'

  get '/your_top_scores' => 'users#dashboard'

  get '/your_failures' => 'users#index'


  # sign up page with form:
  get 'users/new' => 'users#new', as: :new_user
  # create (post) action for when sign up form is submitted:
  post 'users' => 'users#create'


  # log in page with form:
	get '/login'     => 'sessions#new'
	# create (post) action for when log in form is submitted:
	post '/login'    => 'sessions#create'
	# delete action to log out:
	delete '/logout' => 'sessions#destroy'
end
