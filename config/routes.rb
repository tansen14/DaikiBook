Rails.application.routes.draw do
  devise_for :users
  resources :articles

  get 'comments/new' => 'comments#new', as:'comment_new'
  post 'comments/' => 'articles#create', as:'comment_create'
  get 'comments/edit'
  get 'comments/destroy'
	
	get 'articles/:id/comment' => 'articles#comment', as:'comment_article'

  get '/users' => 'users#index'
	get '/users/:id' => 'users#show'

  root 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
