Rails.application.routes.draw do
   # api/v1/
   namespace :api do 
      namespace :v1 do 
         resources :users do 
            resources :portfolios, only: [:show]
         end 

         resources :portfolios do 
            resources :stocks, only: [:index, :show] 
         end 
         
         resources :stocks
      end 
   end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
