Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'

  resources :categories, only: :index

  resources :movies do
    resources :loan_entries
  end

  namespace :api do
    jsonapi_resources :categories
    jsonapi_resources :movies
    jsonapi_resources :loan_entries
  end
end
