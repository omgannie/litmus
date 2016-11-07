Rails.application.routes.draw do
  resources :passages, only: [:index, :create]
  resources :songs, only: [:index]

  get '/songs/search_song'
  root to: "passages#index"
end
