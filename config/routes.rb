Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: "graphql#execute"
  end


  post "/graphql", to: "graphql#execute"
  resources :expenses
  resources :categories
  resources :users
  resources :payments
  get '/users/:id/payments', to: 'users#payments'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
