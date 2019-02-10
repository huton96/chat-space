Rails.application.routes.draw do
  root  '/groups/:group_id/messages#index'
  end
end
