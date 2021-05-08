Rails.application.routes.draw do
  resources :users, only: [:edit, :update]
  resources :diets
  root to: 'home#index'

  get '/infos', to: 'users#edit', as: :edit_info
  get '/dashboard', to: 'pages#dashboard'
  get '/dieta', to: 'pages#diet'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
