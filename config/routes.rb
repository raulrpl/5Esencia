Rails.application.routes.draw do

  get 'servicio/servicio' => "servicio#servicio", :as => 'servicio'
  get 'principals/index'
  post 'posts/create' => "posts#create", :as => 'create_post'
  put 'posts/update' => "posts#update", :as => 'update_post'
  delete 'posts/destroy' => "posts#destroy", :as => 'destroy_post'
  get 'integrantes/index'
  get 'albums/index'
  get 'contrataciones/index'
  post 'contrataciones/new' => "contrataciones#new", :as => 'new_contrataciones'
  post 'contrataciones/create' => "contrataciones#create", :as => 'create_contrataciones'
  put 'contrataciones/update' => "contrataciones#update", :as => 'update_contrataciones'
  get 'users/index'
  get 'posts/index'
  get 'posts/new'  => "posts#new", :as => 'new_post'
  get 'posts/edit' 
  get 'posts/:id' => "posts#show", :as => 'post'
  
  resources :contrataciones
  resources :albums
  resources :integrantes
  resources :users
  resources :posts
 # resources :user_sessions
 # match 'login' => 'user_sessions#new', as: :login
  #match 'logout' => 'user_sessions#destroy', as: :logout
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
