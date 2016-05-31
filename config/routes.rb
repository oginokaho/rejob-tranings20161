Rails.application.routes.draw do

  get 'sessions/new'

  get 'admin/do'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'top' => 'front#top'
  get 'search' => 'front#search'
  get 'job' => 'front#job'

  get 'front/search' => 'front#search'


  get 'admin' => 'admin#admin'
  get 'admin_edit' => 'admin#update'
  get 'admin_new' => 'admin#new'

  post 'jobs' => "admin#admin_new"

  post 'edit_through' => "admin#edit_through"
  get 'destroy_through' => "admin#destroy_through"
  post 'new_through' => "admin#new_through"



  get 'login'   => 'sessions#login'
  get 'login_through' => 'sessions#login_through'

  get 'mypage' => 'sessions#mypage'

  get 'logout'  => 'sessions#logout'
  #get 'mypage' => 'sessions#logout_through'

  get 'entry' => 'entry#entry'
  get 'entry_confirm' => 'enrty#entry_confirm'
  get 'entry_confirm' => 'entry#entry_confirm_through'



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
