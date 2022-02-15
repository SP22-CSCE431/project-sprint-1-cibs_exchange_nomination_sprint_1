Rails.application.routes.draw do
  resources :representatives
  resources :students
  resources :universities
  root "representatives#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
