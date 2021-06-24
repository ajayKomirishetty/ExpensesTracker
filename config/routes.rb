Rails.application.routes.draw do
  resources :expenses
  resources :categories
  resources :users
  resources :payments
  get '/users/:id/payments', to: 'users#payments'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
