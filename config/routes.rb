Rails.application.routes.draw do
  get 'appointments/confirm'

  get 'appointments/deny'

  get 'appointments/cancel'

  get 'appointments/create'

  get 'profiles/edit'

  get 'profiles/show'

  get 'profiles/update'

  get 'lessons/index'

  get 'lessons/show'

  get 'lessons/new'

  get 'lessons/update'

  get 'lessons/destroy'

  get 'lessons/create'

  devise_for :users
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
