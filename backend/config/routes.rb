Rails.application.routes.draw do
  get 'chatroom/index'
  post 'chatroom/speak'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
