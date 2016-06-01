Rails.application.routes.draw do
  get 'signup',  to: 'sales#new'

  resources :sales
end
