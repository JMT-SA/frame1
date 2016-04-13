Rails.application.routes.draw do

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users do
    collection do
      get 'load_index'
    end
  end

  resources :departments do
    collection do
      get 'load_index'
    end
  end

  resources :branches do
    collection do
      get 'load_index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Catch-all route.
  # WHILE THIS WILL MAKE DEV EASIER IT MAKES THE APP VULNERABLE TO A PATH LIKE
  #    get controller/destroy/1
  # SUCCEEDING!
  # Therefore all routes must appear in the config.
  # get ':controller(/:action(/:id))'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'sessions#new'
end
