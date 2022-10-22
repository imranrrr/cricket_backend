Rails.application.routes.draw do
  root 'match_schedule#index'

  get 'venue/index'
  get 'team/index'
  
  get 'prediction/index'
  get '/current_user', to: 'current_user#index'
  resources :match_schedules, only: [:index, :show] do
    member do
      post :prediction
    end
  end

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
