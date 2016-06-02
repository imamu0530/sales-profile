Rails.application.routes.draw do
  get 'signup',  to: 'sales#new'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :sales
  resources :sales do
    member do
      get 'preview'
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
end
