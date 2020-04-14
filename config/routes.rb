Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :line_items
  resources :carts

  get 'shop_dog/index'
  get 'shop_dog/dog_food'
  get 'shop_dog/dog_toys'
  get 'shop_dog/dog_beds'
  get 'shop_cat/index'
  get 'shop_cat/cat_food'
  get 'shop_cat/cat_toys'
  get 'shop_cat/cat_beds'

  root 'home#index', as: 'home_index'

  get '/search' => 'search#search', :as => 'search_page'

  resources :products do
    get :who_bought, on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
