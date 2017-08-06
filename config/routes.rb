Rails.application.routes.draw do

  get '/' => 'artworks#index'

  get '/artworks' => 'artworks#index'
  get '/artworks/new' => 'artworks#new'
  post '/artworks' => 'artworks#create'
  get '/artworks/:id' => 'artworks#show'
  get '/artworks/:id/edit' => 'artworks#edit'
  patch '/artworks/:id' => 'artworks#update'
  delete '/artworks/:id' => 'artworks#destroy'


  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'



end
