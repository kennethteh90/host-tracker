Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  root to: 'guests#index'
  get '/export', to: 'guests#export', as: 'export'
end
