Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :decks, only: [:create, :show]
      resources :cards, only: [:create, :destroy]
      get '/decks/:id/draw', to: 'decks#draw'
    end
  end
end
