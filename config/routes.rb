Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
  root 'static_pages#home'
  get  '/about', to: 'static_pages#about'
  resources :categories
  resources :discounts
  namespace :admin do
    root "dashboard#index"
    resources :tours
  end
  end
end
