Rails.application.routes.draw do
  
  get 'posts/index'

  get 'contacts/create'

  post 'charges/create' => 'charges#create'
  get 'tours/demo'
  get 'tours/new'
  get 'tours/wire' => 'tours#wire'
  root 'home#index'
  post 'users/login' => 'users#login'
  post 'users' => 'users#create'
  post 'properties' => 'properties#create'
  post 'appointments/tourAppointment' => 'appointments#tourAppointment'
  post 'appointments' => 'appointments#create'
  get 'users/:id/properties' => 'users#show'
  get 'users/:id' => 'users#profile', as: 'profile'
  get 'auth/:provider/callback', to: 'sessions#create' 
  delete 'sign_out' => 'sessions#destroy'
  get 'virtualtour' => 'tours#main'
  get 'virtualtour/new' => 'tours#new'
  post 'getTime' => 'appointments#getTime'
  post 'virtualtour/setPrice' => 'tours#setPrice'
  post 'virtualtour/getNeighborhoods' => 'tours#getNeighborhoods'
  post 'virtualtour/getDistricts' => 'tours#getDistricts'
  post 'locations' => 'locations#create'
  post 'clients' => 'clients#create'
  get 'destroyclient' => 'clients#destroy'
  get 'Uwtj2dr.html' => 'home#Uwtj2dr'
  get '9jkJdTbj.html' => 'home#Test9jkJdTbj'
  get 'admins/password' => 'admins#password'
  get 'admins' => 'admins#index'
  post 'tours/update' => 'tours#update'
  get 'tours/installments' => 'tours#installments'
  get 'tours/:id' => 'tours#payment'
  get 'clients/switch' => 'clients#switch'
  post 'contacts' => 'contacts#create'
  get 'admins/download_contacts' => 'admins#download_contacts'
  post 'admins/login' => 'admins#login'
  get 'virtualtour/:city' => 'tours#new'
  get 'testImage' => 'home#testImage'
  get 'posts' => 'posts#index'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'home/signature' => 'home#signature'


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
