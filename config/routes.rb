Rails.application.routes.draw do
 

  
  get 'incident_reports/show'

  get 'incident_reports/index'

  get 'incident_reports/new'

  get 'incident_reports/edit'

  get 'users/show'

  get 'users/index'
  get 'register' => 'users#new'
  post 'users' => 'users#create'
  get 'users/edit/:id' => 'users#edit', :as => 'edit'
  devise_for :users
  resources :pages
  resources :users
  root to: 'pages#index'
  put 'lock_user/:id' => 'users#lock_user', :as => 'lock_user'
  put 'unlock_user/:id' => 'users#unlock_user', :as => 'unlock_user'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
