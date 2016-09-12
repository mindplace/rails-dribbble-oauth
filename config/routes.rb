RailsDribbbleOauth::Engine.routes.draw do

  get '/users/auth/dribbble_request',     to: 'dribbble_oauth#make_oauth_request', as: "user_dribbble_oauth_request"
  get '/users/auth/dribbble_callback',    to: 'dribbble_oauth#passthru',           as: "user_dribbble_callback"
  get '/users/auth/dribbble_information', to: 'users#create',                      as: "user_create_from_dribbble"

end
