Rails.application.routes.draw do
  root to: 'pages#home'
  resources :gardeners
  resources :plants
end
