Rails.application.routes.draw do
  resources :events
  resources :announcements, :except => :show
  root to: 'pages#welcome'
  get '/resources' => 'pages#resource'
  get '/admin' => 'pages#admin'

  post '/signup' => 'events#create_signup'
  devise_for :users, :skip => [:registrations]                                          
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
end
