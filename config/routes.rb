Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do 
    resources :users, only: [:create, :show, :index]
    resource :session, only: [:create, :destroy]
    resources :beers, except: [:new]
    resources :breweries, except: [:new]
    resources :reviews, except: [:new]
  end
  
end
