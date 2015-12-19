          Prefix Verb   URI Pattern                              Controller#Action
            root GET    /                                        site#home
       user_bids GET    /users/:user_id/bids(.:format)           bids#index
                 POST   /users/:user_id/bids(.:format)           bids#create
        user_bid GET    /users/:user_id/bids/:id(.:format)       bids#show
                 DELETE /users/:user_id/bids/:id(.:format)       bids#destroy
           users GET    /users(.:format)                         users#index
                 POST   /users(.:format)                         users#create
        new_user GET    /users/new(.:format)                     users#new
            user GET    /users/:id(.:format)                     users#show
                 DELETE /users/:id(.:format)                     users#destroy
    product_bids GET    /products/:product_id/bids(.:format)     bids#index
                 POST   /products/:product_id/bids(.:format)     bids#create
 new_product_bid GET    /products/:product_id/bids/new(.:format) bids#new
     product_bid GET    /products/:product_id/bids/:id(.:format) bids#show
                 DELETE /products/:product_id/bids/:id(.:format) bids#destroy
        products GET    /products(.:format)                      products#index
                 POST   /products(.:format)                      products#create
     new_product GET    /products/new(.:format)                  products#new
         product GET    /products/:id(.:format)                  products#show
                 DELETE /products/:id(.:format)                  products#destroy
   user_products GET    /users/:user_id/products(.:format)       products#index
                 POST   /users/:user_id/products(.:format)       products#create
new_user_product GET    /users/:user_id/products/new(.:format)   products#new
    user_product GET    /users/:user_id/products/:id(.:format)   products#show
                 DELETE /users/:user_id/products/:id(.:format)   products#destroy
                 GET    /users(.:format)                         users#index
                 POST   /users(.:format)                         users#create
                 GET    /users/new(.:format)                     users#new
                 GET    /users/:id(.:format)                     users#show
                 DELETE /users/:id(.:format)                     users#destroy

    