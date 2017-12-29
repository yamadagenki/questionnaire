Rails.application.routes.draw do
  root to: 'answers#new'

  resources :answers
end
