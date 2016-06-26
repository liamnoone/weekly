get '/weeks/:id', to: 'weeks#show'
get '/', to: 'dashboard#index', as: :dashboard
resources :goals
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage
