Rails.application.routes.draw do
  
   
  resources :posts do
    member do
    post 'upvote'
    end
  end

  resources :comments

  resources :users

  resource :login
    get 'login', to: 'logins#new'
    get 'logout', to: 'logins#destroy', as: 'logout'

root 'posts#index'

end
