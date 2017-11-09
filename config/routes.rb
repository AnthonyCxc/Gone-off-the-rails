Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resource :users
  get "/auth/facebook/callback" => "sessions#create_from_omniauth" 
  get "/auth/google/callback" => "sessions#create" 
end
