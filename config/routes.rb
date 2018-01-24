Rails.application.routes.draw do

  # controller#method
  root to: 'katas#index'

  get 'katas/:id' => 'katas#show', as: :kata

  get 'kata/new' => 'katas#new', as: :new_kata
  post 'kata/create' => 'katas#create', as: :create_kata

  get 'kata/:id/edit' => 'katas#edit', as: :edit_kata
  patch 'katas/:id' => 'katas#update', as: :update_kata

end
