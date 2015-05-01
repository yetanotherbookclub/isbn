Rails.application.routes.draw do
  get 'search/:id' => 'books#search'
  resources :books, only: [:show], path: ""
end
