Rails.application.routes.draw do
  root to: 'home#index'

  namespace :authed, path: '' do
    resources :users, only: %i[edit update]
    resources :diets, except: %i[index show destroy]

    get '/infos', to: 'users#edit', as: :edit_info
    get '/dashboard', to: 'pages#dashboard'
    get '/dieta', to: 'pages#diet'
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
