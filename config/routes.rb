Rails.application.routes.draw do
  devise_for :users
  resources :golf_clubs, only: [:show, :edit, :update] do
    resources :reservations, only: [:index, :create, :edit, :update, :destroy]
  end

  get '/owner_index', to: 'golf_clubs#owner_index', as: 'owner_index'

  root 'golf_clubs#show'
end
