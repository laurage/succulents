Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :ownerships, only:[:create]
  end
  resources :plants
end
