Myapp::Application.routes.draw do
  resources :studentorgs


  resources :scholarships
  root :to => "scholarships#index"

  authenticated :user do
    root :to => 'home#index'
  end

  
  root :to => "home#index"
  devise_for :users
  resources :users
end