Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  devise_for :users
  resources :stories
  root'home#index'
  mount Facebook::Messenger::Server, at: "bot"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
