Travelog::Application.routes.draw do
  mount RailsAdmin::Engine => '/passages_admin', :as => 'rails_admin'
  root to: 'states#index'

  resources :states

  get 'state/:abbr', to: 'states#show'

  devise_for :users
end
