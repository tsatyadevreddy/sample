Rails.application.routes.draw do
  resources :roles do
    get 'hide', on: :collection
  end
  root 'roles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
