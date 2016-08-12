Rails.application.routes.draw do
  get 'home/index'

  get 'home/show'

  resources :confers
  resources :subjects
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
