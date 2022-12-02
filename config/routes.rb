Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  namespace :coders do
    resources :projects
    resources :posts
    resources :users
  end

  namespace :companies do
    resources :projects
    resources :users
    resources :users do
      resources :reviews, only: [:new, :create]
   end
  end

end
