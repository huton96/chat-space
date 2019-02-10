Rails.application.routes.draw do
  root  '/groups/:group_id/messages#index'
  resources :groups do
    resources :messages, only: [:index]
  end
end
