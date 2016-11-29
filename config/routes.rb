Rails.application.routes.draw do
  root 'pages#home'
  get '/home' => 'pages#home'

  get "/users/edit" => 'users#edit', :as => 'edit_user'
  resources :users, :except => [:edit]

  resources :locations, :achievements

  get "/login" => 'session#new', :as => 'login'
  post "/login" => 'session#create'
  delete "/login" => 'session#destroy'

end
