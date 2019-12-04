Rails.application.routes.draw do
  post 'token', to: 'oauth2#create'
  post 'validate', to: 'oauth2#validate'
end
