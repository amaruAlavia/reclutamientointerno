Rails.application.routes.draw do
  resources :jobs do
    member do
      post 'postulate'
    end
    collection do
      get 'my_postulations'
    end
  end
  # Ruta personalizada para mostrar las postulaciones del usuario
  get 'jobs/my_postulations', to: 'jobs#my_postulations', as: :my_postulations
  get '/modelo', to: 'general#modelo', as: :modelo
#  resources :jobs
  devise_for :users, controllers: { sessions: 'users/sessions' }
  #root "jobs#index"
  root "general#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
