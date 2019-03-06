Rails.application.routes.draw do
  resources :people do
   resources :cars
  end

  resources :posts
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
