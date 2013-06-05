FirstOrCreate::Application.routes.draw do
  resources :my_objects
  root :to => 'my_objects#index'
end
