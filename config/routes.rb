Rails.application.routes.draw do
  resources :emails
  get 'pages/Index'
  devise_for :users
  root "pages#index"
  resources :tasks
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
