Rails.application.routes.draw do
  root to: "site#root"
  namespace :api do
    resources :posts, only: [:create, :destroy, :show, :index]
  end
end
