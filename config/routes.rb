MetubeCohort3::Application.routes.draw do

  get '/videos/new' => 'videos#new', as: 'new_video'
  root 'videos#show_all'
  get '/videos' => 'videos#show_all'
  get '/videos/:id' => 'videos#show', as: 'video'
  post '/videos' => 'videos#create'

end
