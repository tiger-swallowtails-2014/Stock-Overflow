Stockoverflow::Application.routes.draw do
  resources :users do
    resources :questions do
      resources :responses
      resources :votes
    end
    resources :answers do
      resources :responses
      resources :votes
    end
  end

  get    '/login'  => 'sessions#new', :as => :login
  post   '/login'  => 'sessions#create'
  delete '/logout' => 'sessions#destroy', :as => :logout
end
