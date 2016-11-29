Rails.application.routes.draw do
  root 'pages#home'
  get '/home' => 'pages#home'

  resources :locations, :achievements, :users

  get "/login" => 'session#new', :as => 'login'
  post "/login" => 'session#create'
  delete "/login" => 'session#destroy'

end
