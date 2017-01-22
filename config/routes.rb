# == Route Map
#
#             Prefix Verb   URI Pattern                      Controller#Action
# reservations_index GET    /reservations/index(.:format)    reservations#index
#  reservations_show GET    /reservations/show(.:format)     reservations#show
#   reservations_new GET    /reservations/new(.:format)      reservations#new
#  reservations_edit GET    /reservations/edit(.:format)     reservations#edit
#               root GET    /                                pages#home
#         properties GET    /properties(.:format)            properties#index
#                    POST   /properties(.:format)            properties#create
#       new_property GET    /properties/new(.:format)        properties#new
#      edit_property GET    /properties/:id/edit(.:format)   properties#edit
#           property GET    /properties/:id(.:format)        properties#show
#                    PATCH  /properties/:id(.:format)        properties#update
#                    PUT    /properties/:id(.:format)        properties#update
#                    DELETE /properties/:id(.:format)        properties#destroy
#           services GET    /services(.:format)              services#index
#                    POST   /services(.:format)              services#create
#        new_service GET    /services/new(.:format)          services#new
#       edit_service GET    /services/:id/edit(.:format)     services#edit
#            service GET    /services/:id(.:format)          services#show
#                    PATCH  /services/:id(.:format)          services#update
#                    PUT    /services/:id(.:format)          services#update
#                    DELETE /services/:id(.:format)          services#destroy
#              users GET    /users(.:format)                 users#index
#                    POST   /users(.:format)                 users#create
#           new_user GET    /users/new(.:format)             users#new
#          edit_user GET    /users/:id/edit(.:format)        users#edit
#               user GET    /users/:id(.:format)             users#show
#                    PATCH  /users/:id(.:format)             users#update
#                    PUT    /users/:id(.:format)             users#update
#       reservations GET    /reservations(.:format)          reservations#index
#                    POST   /reservations(.:format)          reservations#create
#    new_reservation GET    /reservations/new(.:format)      reservations#new
#   edit_reservation GET    /reservations/:id/edit(.:format) reservations#edit
#        reservation GET    /reservations/:id(.:format)      reservations#show
#                    PATCH  /reservations/:id(.:format)      reservations#update
#                    PUT    /reservations/:id(.:format)      reservations#update
#                    DELETE /reservations/:id(.:format)      reservations#destroy
#              login GET    /login(.:format)                 session#new
#                    POST   /login(.:format)                 session#create
#                    DELETE /login(.:format)                 session#destroy
#

Rails.application.routes.draw do

  root :to => 'pages#home' #root 'pages#home'
  resources :properties
  resources :services
  resources :users, :except=>[:destroy]
  resources :reservations

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
