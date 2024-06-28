Rails.application.routes.draw do
  # Components
  get 'components', to: 'components#index'

  # Documentation
  get 'documentation', to: 'help#index'

  get 'privacy-policy', to: 'help#privacy'

  get 'tos', to: 'help#tos'

  get 'refund-policy', to: 'help#refund'

  get 'changelog', to: 'help#changelog'

  # User Authentication
  devise_for :users, :path => '', :path_names => {
    :sign_in => "login",
    :sign_out => "logout",
    :sign_up => "register"
  }

  root 'main#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
