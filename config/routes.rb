Rails.application.routes.draw do
  resources :announcements
  root to: 'pages#welcome'

  devise_for :users
end
