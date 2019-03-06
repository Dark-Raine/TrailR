Rails.application.routes.draw do
  resources :friendships
  resources :usermovies
  resources :movies
  
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  post 'api/v1/signin', to: 'api/v1/users#signin'
  post 'api/v1/register', to: 'api/v1/users#register'
  get 'api/v1/validate', to: 'api/v1/users#validate'
  post 'api/v1/collection', to: 'api/v1/users#get_collection'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
