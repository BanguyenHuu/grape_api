Rails.application.routes.draw do
  resources :hoc_sinhs
  mount API => '/'
end
