Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index'
  # get 'lists/:id', to: 'lists#show', as: :list
  # # Defines the root path route ("/")
  # # root "articles#index"
  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists/create', to: 'lists#create'
  resources :lists do
    resources :bookmarks, only: [:show, :new, :create]
  end
  resources :bookmarks, only: :destroy
end
