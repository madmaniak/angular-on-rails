AngularOnRails::Application.routes.draw do
  root to: 'main#index'
  match '/*path' => 'main#index', via: :get
end
