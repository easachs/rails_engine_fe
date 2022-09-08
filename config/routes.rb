Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :merchants, only: [:index, :show]
end
