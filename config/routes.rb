Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :lessons, only: [:index, :show, :new, :update, :destroy, :create] do
    resources :appointments, only: [:create]
  end

  resources :appointments, only: [] do
    member do
      get 'confirm', to: "appointments#confirm"
      get 'deny', to: "appointments#deny"
      get 'cancel', to: "appointments#cancel"
    end
  end

  resources :users, only: [:new, :create, :destroy]
  resource :profile, only: [:show, :edit, :update]
  resources :subcategories, only: [:create]

end
