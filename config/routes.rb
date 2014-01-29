Travelog::Application.routes.draw do
  root to: 'states#index'

  resources :states

  devise_for :users
end
