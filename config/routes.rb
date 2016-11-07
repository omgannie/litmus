Rails.application.routes.draw do
  resources :passages, only: [:index, :create, :new, :show]

  resources :songs, only: [:index]

  get '/songs/search_song'
  get '/lyrics/search_lyrics'
  root to: "passages#index"
end
