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
    resources :users do
      resources :reviews, only: [:new, :create]
      collection do
        get :favourites
      end
   end
  end
end
