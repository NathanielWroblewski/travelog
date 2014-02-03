Travelog::Application.routes.draw do
  root to: 'states#index'

  resources :states

  get 'state/:abbr', to: 'states#show'

  devise_for :users
end
