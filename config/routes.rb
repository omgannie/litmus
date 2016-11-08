Rails.application.routes.draw do
  resources :passages, only: [:index, :create]
  resources :genres, only: [:show]

  get '/songs/search_song' => 'songs#search_song'
  get '/songs/best_song_match'
  get '/lyrics/search_lyrics'
  root to: "passages#index"

  resources :songs, only: [:show]
end
