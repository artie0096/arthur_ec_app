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

  devise_for :users, controllers: {
    :registrations => 'users/registrations',
  }
  root 'home#top'

  resources :carts, only: [:show]

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'

# 　resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
