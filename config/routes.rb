Rails.application.routes.draw do
  #created from rails g resources
  resources :user_books
  resources :books
  resources :users
    

get '/books', to: 'books#index'
#must be resources... not resource
#these solutions work, for params we must use symbol notation and not interpolation... 
get '/books/:id', to: 'books#show'

# resources :books, only: [:show]
end
