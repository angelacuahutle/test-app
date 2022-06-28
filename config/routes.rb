Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "teachers#index"
  resources :teachers do
    collection do
      get 'list'
    end
  end
end
