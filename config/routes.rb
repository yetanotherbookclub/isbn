Rails.application.routes.draw do
  get 'search/:id' => 'books#search'
  resources :books, only: [:show], path: ""
  root 'books#index'
end
