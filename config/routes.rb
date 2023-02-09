Rails.application.routes.draw do
resources :users, only: [:new, :create]
resources :sessions
resources :pictures
end
