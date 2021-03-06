BestBay::Application.routes.draw do

  root to: 'static_pages#home'

  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/signup', to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/post_product', to: 'products#new'
  match '/bids/:id', to: 'bids#create', as: 'bid_path'
  match '/search-product', to: 'products#search', as: 'search_path'
  match '/watchlists/:id', to: 'watchlists#create', as:'watchlist_path'
  match '/watchlists', to:'watchlists#index'
  match '/watchlists/delete/:id', to:'watchlists#delete'
  match '/my-products', to: 'products#list_my_products', as: 'myproducts_path'
  match '/reviews/create/:id', to: 'reviews#create', as: 'create_review_path'
  match '/bidding-history', to: 'bids#list'
  match '/replies/create/:id', to: 'replies#create', as: 'create_reply_path'
 match '/users/deactivate/:id', to: 'users#deactivate'
 match '/users/activate/:id', to: 'users#activate'
 match '/products/destroy/:id', to:'products#destroy'

  resources :products
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :bids
  resources :reviews
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
