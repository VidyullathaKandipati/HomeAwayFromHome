# == Route Map
#
#               Prefix Verb   URI Pattern                                       Controller#Action
#                 root GET    /                                                 pages#home
#           properties GET    /properties(.:format)                             properties#index
#                      POST   /properties(.:format)                             properties#create
#         new_property GET    /properties/new(.:format)                         properties#new
#        edit_property GET    /properties/:id/edit(.:format)                    properties#edit
#             property GET    /properties/:id(.:format)                         properties#show
#                      PATCH  /properties/:id(.:format)                         properties#update
#                      PUT    /properties/:id(.:format)                         properties#update
#                      DELETE /properties/:id(.:format)                         properties#destroy
#     service_bookings GET    /services/:service_id/bookings(.:format)          bookings#index
#                      POST   /services/:service_id/bookings(.:format)          bookings#create
#  new_service_booking GET    /services/:service_id/bookings/new(.:format)      bookings#new
# edit_service_booking GET    /services/:service_id/bookings/:id/edit(.:format) bookings#edit
#      service_booking GET    /services/:service_id/bookings/:id(.:format)      bookings#show
#                      PATCH  /services/:service_id/bookings/:id(.:format)      bookings#update
#                      PUT    /services/:service_id/bookings/:id(.:format)      bookings#update
#                      DELETE /services/:service_id/bookings/:id(.:format)      bookings#destroy
#             services GET    /services(.:format)                               services#index
#                      POST   /services(.:format)                               services#create
#          new_service GET    /services/new(.:format)                           services#new
#         edit_service GET    /services/:id/edit(.:format)                      services#edit
#              service GET    /services/:id(.:format)                           services#show
#                      PATCH  /services/:id(.:format)                           services#update
#                      PUT    /services/:id(.:format)                           services#update
#                      DELETE /services/:id(.:format)                           services#destroy
#                users GET    /users(.:format)                                  users#index
#                      POST   /users(.:format)                                  users#create
#             new_user GET    /users/new(.:format)                              users#new
#            edit_user GET    /users/:id/edit(.:format)                         users#edit
#                 user GET    /users/:id(.:format)                              users#show
#                      PATCH  /users/:id(.:format)                              users#update
#                      PUT    /users/:id(.:format)                              users#update
#         reservations GET    /reservations(.:format)                           reservations#index
#                      POST   /reservations(.:format)                           reservations#create
#      new_reservation GET    /reservations/new(.:format)                       reservations#new
#     edit_reservation GET    /reservations/:id/edit(.:format)                  reservations#edit
#          reservation GET    /reservations/:id(.:format)                       reservations#show
#                      PATCH  /reservations/:id(.:format)                       reservations#update
#                      PUT    /reservations/:id(.:format)                       reservations#update
#                      DELETE /reservations/:id(.:format)                       reservations#destroy
#                login GET    /login(.:format)                                  session#new
#                      POST   /login(.:format)                                  session#create
#                      DELETE /login(.:format)                                  session#destroy
#

Rails.application.routes.draw do
  root :to => 'pages#home' #root 'pages#home'
  resources :properties do
    resources :reservations
  end
  resources :services do
    resources :bookings
  end
  resources :users, :except=>[:destroy]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
