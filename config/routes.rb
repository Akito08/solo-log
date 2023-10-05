Rails.application.routes.draw do
  root "maps#index"

  resources :shops, only: [:show] do
    resources :reviews
  end
end
