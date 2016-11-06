Rails.application.routes.draw do
  resources :passages
  root to: "passages#index"
end
