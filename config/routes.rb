RailsDribbbleOauth::Engine.add_routes do
    get '/users/auth/dribbble_request',     to: 'main#make_oauth_request', as: "user_dribbble_oauth_request"
    get '/users/auth/dribbble_callback',    to: 'main#passthru',           as: "user_dribbble_callback"
    get '/users/auth/dribbble_information', to: 'users#create',            as: "user_create_from_dribbble"
end

RailsDribbbleOauth::Engine.draw_routes
