Travelog::Application.routes.draw do
  mount RailsAdmin::Engine => '/passages_admin', :as => 'rails_admin'
  root to: 'states#index'

  resources :states, except: [:destroy, :update]

  get 'state/:abbr', to: 'states#show'
  post 'states/:id', to: 'states#update'

  devise_for :users
end
