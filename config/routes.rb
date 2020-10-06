Rails.application.routes.draw do
  resources :healthresources
  root 'healthresources#index'

  get 'healthresources/index'
  get 'healthresources/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
