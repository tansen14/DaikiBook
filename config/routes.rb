Rails.application.routes.draw do
  devise_for :users
  resources :articles

  get 'comments/edit'
  get 'comments/destroy'
	
	get 'articles/:id/comment' => 'comments#new'

  get '/users' => 'users#index'
	get '/users/:id' => 'users#show'

  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
