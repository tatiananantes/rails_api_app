Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
 
  #index all users
  get '/users', to: 'users#index'

  #show route - specific user
  get '/users/:id', to: 'users#show', as: 'user'
  
  #user registration route
  post 'auth/register', to: 'users#register'

end
