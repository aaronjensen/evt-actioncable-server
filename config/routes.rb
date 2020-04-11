Rails.application.routes.draw do
  resources :counts, only: [:index, :update]
end
