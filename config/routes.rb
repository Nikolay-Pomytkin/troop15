Rails.application.routes.draw do
  root to: 'pages#welcome'

  devise_for :users
end
