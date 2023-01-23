Rails.application.routes.draw do


  resources :retrive

  resources :rovers do
    collection do
      get 'retrive'
    end
  end

  resources :commands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => 'rovers#index'
end
