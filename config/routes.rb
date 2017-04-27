
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get '/bartenders/search', to: 'bartenders#search'
  resources :bartenders, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :update]
  end
end
