Rails.application.routes.draw do
  resources :rovers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'rovers#index'

  # API
  namespace :api do
    namespace :v1 do
      resources :rovers
    end
  end

end
