Rails.application.routes.draw do
  resources :logs
  resources :challenges do
    scope module: 'challenges' do
      resources :months, only: [:index]
      # Write show route by hand so that I can use
      # params[:month] in the controller.
      get '/months/:month', to: 'months#show', as: 'month'
    end
  end
  root 'challenges#index'
  resources :challenges
  resources :challenge_days
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
