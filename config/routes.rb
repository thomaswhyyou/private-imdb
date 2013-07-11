RailsImdb::Application.routes.draw do
  root :to => 'home#index', as: 'home'
  # resources :movies

  get '/movies'               => 'movies#index', as: 'movies'
  post '/movies/create'       => 'movies#create', as: 'create_it'
  # post '/movies/fav'        => 'movies#fav', as: 'fav_it'
  get '/movies/new'           => 'movies#new', as: 'new_movie'

  put '/movies/voteup'  => 'movies#vote_up', as: 'vote_up'
  put '/movies/votedown'  => 'movies#vote_down', as: 'vote_down'
  get '/movies/new/detail'    => 'movies#view_detail', as: 'view_detail'
  get '/movies/savedalready'  => 'movies#saved_already', as: 'saved_already'

  get '/movies/:id/edit'      => 'movies#edit', as: 'edit_movie'
  get '/movies/:id'           => 'movies#show', as: 'movie'
  put '/movies/:id'           => 'movies#update'
  delete '/movies/:id'        => 'movies#destroy'

end
