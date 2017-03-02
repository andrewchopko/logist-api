Rails.application.routes.draw do

  namespace :api do
  	resources :drivers, only: [:index, :show]
  end
  
end
