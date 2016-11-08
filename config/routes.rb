Rails.application.routes.draw do
  resources :passages, only: [:index, :create, :show]

  get '/songs/search_song'
  get '/songs/best_song_match'
  get '/lyrics/search_lyrics'
  root to: "passages#index"
end
