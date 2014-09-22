Stockoverflow::Application.routes.draw do
  root :to => 'users#index'

  resources :users do
    resources :questions do
      resources :responses
      resources :votes
      resources :answers do
        resources :responses
        resources :votes
      end
    end
  end



  get    '/sessions'  => 'sessions#new'
  delete '/sessions' => 'sessions#destroy'
  post   '/sessions/new'  => 'sessions#create'


end
