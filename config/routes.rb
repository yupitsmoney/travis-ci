Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'fashionpost#index', as: :users 
  get 'user/new' => 'user#new', as: :new_user
  post '/' => 'user#create', as: :create_user

  get 'user/index' => 'user#index', as: :user_index

  get 'sessions/new' => 'sessions#new', as: :new_session
  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session
  post 'sessions/new' => 'sessions#create', as: :create_session

  get "/fashionpost" => "fashionpost#index", as: :posts
  get "/fashionpost/new" => "fashionpost#new", as: :new_post
  post "/fashionpost" => "fashionpost#create", as: :create_post
  get "/fashionpost/:id" => "fashionpost#show", as: :post
  get "/fashionpost/:id/edit" => "fashionpost#edit", as: :edit_post
  delete "/fashionpost/:id" => "fashionpost#delete", as: :delete_post
  patch "/fashionpost/:id" => "fashionpost#update", as: :update_post

  get "targets/index" => "targets#index",as: :targets_path

  get "layouts/application" => "application#authorize",as: :application_layout

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
