Rails.application.routes.draw do

  # controller#method
  root to: 'katas#index'

  get 'katas/:id' => 'katas#show', as: :kata
end
