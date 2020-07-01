Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    resources :votes
  end
  resources :users do
    resources :followers
  end
  resources :usersessions

  delete "logout", to: "usersessions#destroy"
end
