Rails.application.routes.draw do
  resources :passages, only: [:index, :create, :show]

  get '/songs/search_song'
  get '/songs/compare_emotions'
  get '/lyrics/search_lyrics'
  root to: "passages#index"
end
