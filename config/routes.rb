Rails.application.routes.draw do
  resources :categories, only: [:show]

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :lessons, only: [:index, :show, :new, :update, :destroy, :create] do
    resources :appointments, only: [:create]
  end

  resources :appointments, only: [] do
    member do
      patch :confirm
      patch :deny
      patch :cancel
    end
  end

  resource :profile, only: [:show, :edit, :update]

end
