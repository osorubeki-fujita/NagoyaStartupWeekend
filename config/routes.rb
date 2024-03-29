Rails.application.routes.draw do
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

  # resources :others, controller: :application

  #-------- Tokyo Metro

  get 'tokyo_metro(/index)' , to: 'tokyo_metro#index'
  get 'tokyo_metro/admin' , to: 'tokyo_metro#admin'

  post 'tokyo_metro/approaching' , to: 'tokyo_metro#approaching'
  post 'tokyo_metro/stop_vibration' , to: 'tokyo_metro#stop_vibration'

  get 'tokyo_metro/to_vibrate.json' , to: 'tokyo_metro#to_vibrate'
  post 'tokyo_metro/now_vibrating' , to: 'tokyo_metro#now_vibrating'

  #-------- JR East

  get 'jr_east(/index)' , to: 'jr_east#index'
  get 'jr_east/admin' , to: 'jr_east#admin'

  post 'jr_east/approaching' , to: 'jr_east#approaching'
  post 'jr_east/stop_vibration' , to: 'jr_east#stop_vibration'

  get 'jr_east/to_vibrate.json' , to: 'jr_east#to_vibrate'
  post 'jr_east/now_vibrating' , to: 'jr_east#now_vibrating'

  #-------- Nagoya

  get 'nagoya(/index)' , to: 'nagoya#index'
  get 'nagoya/admin' , to: 'nagoya#admin'

  post 'nagoya/approaching' , to: 'nagoya#approaching'
  post 'nagoya/stop_vibration' , to: 'nagoya#stop_vibration'

  get 'nagoya/to_vibrate.json' , to: 'nagoya#to_vibrate'
  post 'nagoya/now_vibrating' , to: 'nagoya#now_vibrating'

  #-------- Kyoto

  get 'kyoto(/index)' , to: 'kyoto#index'
  get 'kyoto/admin' , to: 'kyoto#admin'

  post 'kyoto/approaching' , to: 'kyoto#approaching'
  post 'kyoto/stop_vibration' , to: 'kyoto#stop_vibration'

  get 'kyoto/to_vibrate.json' , to: 'kyoto#to_vibrate'
  post 'kyoto/now_vibrating' , to: 'kyoto#now_vibrating'

  # match ':controller/:action', via: [ :get , :post , :patch ]

  get '/index' , to: 'application#index'
  root to: 'application#index'
end
