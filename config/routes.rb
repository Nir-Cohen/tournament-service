Rails.application.routes.draw do
  #resources :tournaments
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'tournaments/saveTournamentResults'
  post 'tournaments/getTournamentResults'
  get 'tournaments/fetchSuccessPerQuestion'
end
