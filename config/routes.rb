Rails.application.routes.draw do

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
post '/logout', to: 'sessions#destroy'

resources :users, only: [:new, :create]

get '/welcome', to: 'users#welcome' # CHECK
end
