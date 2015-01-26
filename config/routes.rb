AppRevision::Engine.routes.draw do
  get '/revisions/current', :to => 'revisions#show'
end
