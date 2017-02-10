Rails.application.routes.draw do
  root 'welcome#index'

  get "sources", to: "sources#index"
  get "about", to: "about#index"
  resources :products
end
