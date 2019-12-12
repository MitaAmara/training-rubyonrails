Rails.application.routes.draw do
  root 'homes#index'
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :articles do
  	resources :comments
  end
  resources :sessions
  get 'contacts/index'
  get 'contacts/new'
  post '/contacts', to: 'contacts#create'
end
