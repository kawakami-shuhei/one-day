Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :home
  resources :contents do
    resources :cards do
      put :sort
    end
  end
end
