Rails.application.routes.draw do
  resources :languages
  resources :phrases
  resources :table_files do
    resources :keys
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
