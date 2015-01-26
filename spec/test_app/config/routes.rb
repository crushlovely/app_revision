Rails.application.routes.draw do
  mount AppRevision::Engine, :at => '/'
end
