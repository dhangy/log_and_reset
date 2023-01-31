Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => 'sessions' }

  resource :users

  root to: 'welcome#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
