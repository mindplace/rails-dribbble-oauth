Rails.application.routes.draw do
    get 'dribbble/request',      to: 'main#oauth_request',  as: "dribbble_request"
    get 'dribbble/callback',     to: 'main#callback',       as: "dribbble_callback"
    get 'dribbble/information',  to: 'users#add_dribbble_info',        as: "dribbble_information"
end
