Rails.application.routes.draw do
  resources :stocks
   # api/v1/
   namespace :api do 
      namespace :v1 do 
         resources :portfolios
         resources :users
      end 
   end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
