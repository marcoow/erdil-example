Rails.application.routes.draw do
  post 'token', to: 'oauth2#create'
end
