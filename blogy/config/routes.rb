Rails.application.routes.draw do
  resources :cars
  resources :people
  resources :posts
  root 'pages#index' # This is my default homePage. By adding root we made it so. We removed get and added root cuz we dont want to have more thant one url for each page 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
