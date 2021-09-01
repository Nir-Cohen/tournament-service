Rails.application.routes.draw do
  resources :tournamnets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'tournamnets/saveTournament'
end
