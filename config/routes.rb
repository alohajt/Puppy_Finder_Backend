Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :animals
  resources :locations

 
get '/userLocation/:username', to: 'users#locatelocation'
get '/userFavorites/:username', to: 'users#favoriteAnimals'
post '/changeUserName/:currentUsername', to: 'users#changeUserName'
post '/changeUserPassword/:currentUsername', to: 'users#changeUserPassword'
post '/changeUserLocation/:currentUsername', to: 'users#changeUserLocation'
post '/addToFavorites/:currentUsername/:puppyID', to: 'favorites#addToFavorites'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
