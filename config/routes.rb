Rails.application.routes.draw do
    get 'request',      to: 'main#oauth_request',  as: "dribbble_oauth_request"
    get 'callback',     to: 'main#passthru',       as: "dribbble_callback"
    get 'information',  to: 'users#create',        as: "create_from_dribbble"
end
