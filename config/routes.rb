MoviesAppTwo::Application.routes.draw do
  resources :movies_players


  resources :players


  resources :movies


  resources :roles


  resources :studios


  resources :genres

  root to: 'movies#index'

end
