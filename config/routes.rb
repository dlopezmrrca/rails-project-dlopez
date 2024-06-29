Rails.application.routes.draw do

  root 'home#index'

  get 'home/about'
  get 'home/characters'
  get 'home/characters/:id', to: 'home#show', as: 'home_character'
  get 'home/clans'
  get 'clans/:id/characters', to: 'home#clan_characters', as: 'clan_characters'
  get 'home/search_characters', to: 'home#search_characters', as: 'search_characters'
  get "up" => "rails/health#show", as: :rails_health_check

end
