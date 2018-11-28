Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'privacy' => 'pages#privacy'
  resources :posts do
    resources :comments
  end
  match '404', :to => "errors#not_found", :via => :all
  match 'public/500', :to => "errors#internal_server_error", :via => :all


end
