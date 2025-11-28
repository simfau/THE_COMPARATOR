Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  devise_for :users
  root to: "comparisons#new"

  resources :comparisons, only: [:create, :show, :destroy]
  get '/search_contents', to: 'comparisons#search_contents', as: :search_contents
end
