Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :events, only: [:index, :show, :create, :update, :destroy]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
