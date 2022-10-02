Rails.application.routes.draw do
  #index all users
  get '/users', to: 'users#index'

  #show route - specific user
  get '/users/:id', to: 'users#show', as: 'user'
  
  #user registration route
  post 'auth/register', to: 'users#register'

  #User login
  resources :users
  post '/auth/login', to: 'authentication#login'

end
