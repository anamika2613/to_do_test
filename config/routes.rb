Rails.application.routes.draw do
  # get 'sessions/new'
  resources :users
  resources :sessions
  root to: 'users#new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :to_do_categories, only: [:index,:new,:create] do
    member do
      post :completed
    end
  end
end
