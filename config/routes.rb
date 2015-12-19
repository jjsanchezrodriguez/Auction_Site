Rails.application.routes.draw do
  root to: 'site#home'
  # get "/products/:product_id/bids" => "bids#new_entry_email", as: "new_entry_email"

  resources :users, only:[:index, :show, :create, :new, :destroy] do
    resources :bids, only:[:index, :show,:create,:destroy]
  end

   resources :products, only:[:index, :show, :create, :new, :destroy] do
      # resources :users, only:[:index, :show, :create, :new, :destroy] do
        resources :bids, only:[:index, :show,:new,:create,:destroy]
      # end  
  end


  resources :users, only:[:index, :show, :create, :new, :destroy] do
    resources :products, only:[:index, :show,:new,:create,:destroy]
  end

 
end
