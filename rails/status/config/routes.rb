Rails.application.routes.draw do
  get 'status/index'

  root 'status#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
