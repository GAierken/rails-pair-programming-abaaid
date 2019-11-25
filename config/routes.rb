Rails.application.routes.draw do
  resources :aids, only: [:new, :create, :show, :destroy]
  resources :users, only: [:index, :new, :create, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
