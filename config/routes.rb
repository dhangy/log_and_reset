Rails.application.routes.draw do
  devise_for :users

  get 'my_log', to: 'users#show', as: :my_log
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
