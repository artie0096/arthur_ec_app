Rails.application.routes.draw do
  resources :tags
  resources :product_tags
  resources :categories
  resources :product_categories
  resources :product_images
  resources :suppliers
  resources :products do
     resources :product_details
   end
  resources :pay_methods
  resources :deliveries
  resources :order_details
 
  resources :orders
  devise_for :users
  root 'home#top'

#   devise_for :users, controllers: {
#     :registrations => 'users/registrations',
#     :sessions => 'users/sessions'
# }
# 　resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
