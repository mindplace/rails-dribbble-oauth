RailsDribbbleOauth::Engine.draw_routes do
    get 'dribbble_request',     to: 'main#make_oauth_request', as: "user_dribbble_oauth_request"
    get 'dribbble_callback',    to: 'main#passthru',           as: "user_dribbble_callback"
    get 'dribbble_information', to: 'users#create',            as: "user_create_from_dribbble"
end
