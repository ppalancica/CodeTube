Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get 'pages/about'
  get '/myprojects' => 'project#list'
  post '/free' => 'charge#free'

  root 'project#index'

  resources :project do
    resources :task, only: [:show]
  end

  resources :project do
    resources :reviews, only: [:create, :destroy]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
