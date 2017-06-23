Rails.application.routes.draw do
  get 'listings/index'

  root "listings#index"

  post 'send_email', to: 'listings#send_email'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
