MymServer::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :news

  resources :users, :only => [:index, :create] do
    collection do
      get :by_uuid
    end
  end
end
