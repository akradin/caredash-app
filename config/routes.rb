Rails.application.routes.draw do
  # root 'static_pages#home'
  root 'users#new'
  # this page has the same content as login but with different form

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  # post 'static_pages/home', to: 'users#new'
  get '/signup', to: 'users#new'
  resources :users
end
