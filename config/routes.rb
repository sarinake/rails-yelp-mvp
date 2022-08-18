Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # if we don't put reviews in restaurants, we won't be able to do restaurants/.../reviews
  # we would only be able to do restaurants/... and reviews/...
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
