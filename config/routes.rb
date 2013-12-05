MetubeCohort3::Application.routes.draw do

  root 'videos#show_all'
  resources :videos

end
