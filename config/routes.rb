Rails.application.routes.draw do
  root "things#index"

  resources :things do
    resources :comments
  end
  resources :documents
end
