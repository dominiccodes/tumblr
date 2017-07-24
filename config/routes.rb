Rails.application.routes.draw do
  
  devise_for :users
	resources :posts do
		# nesting comments always belong to the posts
		# there is no route for comments without posts
		resources :comments
	end
	root "posts#index"
	
	get '/about', to: 'pages#about'
end
