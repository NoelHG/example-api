Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :index] do
    member do
      resources :sleep_records, only: :index
      post 'clock_in', to: 'clock_ins#create'
    end
  end
end
