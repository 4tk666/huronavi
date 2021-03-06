Rails.application.routes.draw do
  devise_for :users
  root 'reviews#index'
  resources :reviews do
    collection  do 
      get 'prefecture' 
      get 'category'
      get 'search',  to: 'reviews#search'
    end
    resources :comments
  end
  resources :users, only: [:show]
end
