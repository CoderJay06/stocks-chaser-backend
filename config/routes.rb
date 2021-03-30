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
   # login/logout routes
   delete 'sessions', controller: :sessions, action: :destroy
   resources :sessions, only: [:create, :destroy]
end
