Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :channels, only: [:index]
  resources :shows do 
  	get :set_as_favourite
  	delete :remove_from_favourite
  end
  get "my_favourite_shows", to: "users#my_favourite_shows"
end
