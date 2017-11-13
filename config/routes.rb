Enerall::Application.routes.draw do

  #Ruta a página principal
  root :to => "contenidos#index"

  get "contenidos/quienes_somos"
  get "contenidos/historia"
  get "contenidos/mision"
  get "contenidos/vision"
  get "contenidos/tecnologia"
  get "contenidos/ts"
  get "contenidos/mejora_continua"
  get "contenidos/galeria"
  get "contenidos/productos"
  get "contenidos/maiz"
  get "contenidos/sorgo"
  get "contenidos/higuerilla"
  get "contenidos/soya"
  get "contenidos/ajonjoli"
  get "contenidos/frijol"
  get "contenidos/ricino"
  get "contenidos/contacto"
  get "contenidos/aviso"

  get "english/index"
  get "english/about_us"
  get "english/history"
  get "english/mission"
  get "english/vision"
  get "english/technology"
  get "english/st"
  get "english/improvement"
  get "english/products"
  get "english/corn"
  get "english/sorghum"
  get "english/castor"
  get "english/soy"
  get "english/sesame"
  get "english/beans"
  get "english/castor_oil"
  get "english/gallery"
  get "english/contact"
  get "english/notice"

  get "sharepoint/index"

  resources :contenidos

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
