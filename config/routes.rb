Artsandmusicfactory::Application.routes.draw do

  get "users/new"

  resources :events
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  root :to => 'pages#home'

  match '/home',           :to => 'pages#home'
  match '/info',           :to => 'pages#info'
  match '/blog',           :to => 'pages#blog'
  match '/musicians',      :to => 'pages#musicians'
  
  match '/sandy',          :to => 'pages#musicians'
  match '/jeff_dantona',   :to => 'pages#jeff'
  match '/alecia_chakour', :to => 'pages#musicians'
  match '/geoff_vidal',    :to => 'pages#musicians'

  match '/theartsblock', :to => 'pages#artsblock'

  match "/facebook"      => redirect("http://www.facebook.com/pages/Greenfield-MA/The-Arts-Block/112168088794169?ref=ts")
  match "/pushkin"       => redirect("http://thepushkin.com")

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
