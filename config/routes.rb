Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index" # 1:
  # 2: For "registerations" look at below controller method first
  devise_for :users, 
  :controllers => { :registrations => "user/registrations" }  
  get "/my_portfolio", to: "users#my_portfolio" # 3:
  get "/search_stock", to: "stocks#search" # 4:
  resources :user_stocks, only: [:create, :destroy] # 5:
  # 6: Below imp routes for many-to-many self user association
  get "/my_friends", to: "users#my_friends" 
  resources :users, only: [:show]
  resources :friendships
  get "/search_friends", to: "users#search"
  post "/add_friend", to: "users#add_friend"
end
