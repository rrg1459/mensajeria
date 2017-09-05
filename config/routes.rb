Rails.application.routes.draw do
  resources :mensajes
  get 'entrada/indice'
  root 'entrada#indice'

  resources :grupos
  resources :contactos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
