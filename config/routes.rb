Rails.application.routes.draw do
  
  resources :bug_resolutions
  resources :bug_assignments
  resources :bug_creations
  resources :bugs
  resources :users
  resources :hunts
  resources :companies

  resource :hunts do
    resource :bugs
  end

  resource :companies do
    resource :hunts
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'welcome/index'
  root 'welcome#index'
  
  #oauth2 to access github api
  get 'auth/github', :as => 'github_auth'
  get "/auth/github/callback" => "hunts#index"
 
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
  
  get 'join' => 'users#join'

  get 'signup'  => 'users#new' 
  #resources :users

  get 'login'  => 'sessions#new' 
  resources :sessions

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

end
