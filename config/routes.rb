Rails.application.routes.draw do
  resources :problems
  get 'sessions/new'

  get 'welcome/index'
  root 'welcome#index'

  get '/what_is_a_ctf',     to: 'welcome#what_is_a_ctf'
  get '/about',             to: 'welcome#about'
  get '/signup',            to: 'users#new'
  post '/signup',           to: 'users#create'
  get '/login',             to: 'sessions#new'
  post '/login',            to: 'sessions#create'
  delete '/logout',         to: 'sessions#destroy'
  resources :users
  get '/problems',          to: 'problems#index'
  get '/problems',          to: 'problems#new'
  post '/problems/submit/:id',     to: 'problems#submit'
  resources :problems           

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
