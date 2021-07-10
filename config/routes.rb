Rails.application.routes.draw do
  resources :comments, except [:index]
  resources :tweets do 
      resources :comments, only [:index]
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
