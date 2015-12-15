Rails.application.routes.draw do
  root to: 'site#home'

  resources :users, only:[:index, :show, :create, :new, :destroy] do
    resources :products, only:[:index, :show,:new,:create,:destroy]
  end

  resources :users, only:[:index, :show, :create, :new, :destroy] do
    resources :bids, only:[:index, :show,:new,:create,:destroy]
  end

   resources :products, only:[:index, :show, :create, :new, :destroy] do
    resources :bids, only:[:index, :show,:new,:create,:destroy]
  end
end
