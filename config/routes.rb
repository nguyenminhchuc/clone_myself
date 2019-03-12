Rails.application.routes.draw do
  get 'show_books/index'
  scope "(:locale)", locale: /en|vi/ do
  devise_for :users

  get "/search", to: 'search#index'
  post "/search_by_full_text", to: 'search#search_by_full_text'
  post "/search_by_like", to: "search#search_by_like"
  root 'static_pages#home'
  get  '/about', to: 'static_pages#about'
  get  '/show_books', to: 'show_books#index'
  resources :categories
  resources :discounts
  resources :books
  resources :comments, only: [:create, :destroy]
  resources :tours do
    resources :likes
  end

  namespace :admin do
    root "dashboard#index"
    resources :tours
  end
  end
end
