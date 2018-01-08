Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'guests#index'
  resources :guests do
      put :to_export, on: :member
    end
end
