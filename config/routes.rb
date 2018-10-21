Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  get '/what_is_a_ctf',     to: 'welcome#what_is_a_ctf'
  get '/about',             to: 'welcome#about'
  get '/signup',            to: 'users#new'
  post '/signup',            to: 'users#create'
  resources :users           

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
