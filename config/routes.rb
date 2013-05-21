Disambiguation::Application.routes.draw do
  resources :locations


  resources :universes
  authenticated :user do
    root :to => 'universes#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end