Rails.application.routes.draw do
  
   
  resources :posts

  resources :comments

  resources :users

  resource :login
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'

root 'posts#index'

end
