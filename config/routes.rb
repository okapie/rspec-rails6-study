Rails.application.routes.draw do
  resources :users do
    get :activate, on: :member
  end

  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
