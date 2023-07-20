Rails.application.routes.draw do
  resources :countries
  devise_for :users
  
  root 'home#index'

  get '/contacto', to: "home#contact"
  get '/terminos-y-condiciones', to: "home#tyc"
  post 'contact_save', to: 'home#contact_save'

  post 'import_materiales', to: 'home#csv_materials'
  post 'import_ciudades', to: 'home#csv_city'

  get '/mantenimiento', to: 'maintenance#new'
  post '/mantenimiento/new', to: 'maintenance#create'

  get '/post-servicio', to: 'post_service#new'
  post '/post-servicio/new', to: 'post_service#create'

  get '/equipo', to: 'equipement#new'
  post '/equipo/new', to: 'equipement#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
