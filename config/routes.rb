MymServer::Application.routes.draw do
  resources :users, :only => [:index, :create] do
    collection do
      get :by_uuid
    end
  end
end
