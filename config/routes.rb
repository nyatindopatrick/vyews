Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  resources :users do
    resources :followers
  end
  resources :usersessions

  delete "logout", to: "usersessions#destroy"
end
