Rails.application.routes.draw do

  root 'home#index'

  get 'home/about'
  get 'home/characters'
  get 'home/characters/:id', to: 'home#show', as: 'home_character'

  get 'home/search', to: 'home#search', as: 'search_characters'


  get "up" => "rails/health#show", as: :rails_health_check


end
