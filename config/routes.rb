Rails.application.routes.draw do

  root 'discussions#index'

  resources :discussions do
    resources :comments
  end
end
