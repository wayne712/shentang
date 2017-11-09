Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :categories
    resources :products
    resources :product_photos

    root to: "users#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'wx_pay' => 'pay#wx_pay'
  post 'wx_notify' => 'pay#wx_notify'
  root to: 'home#index'
  get 'about_us', to: 'home#about', as: 'about_us'
  resource :wechat, only: [:show, :create]
  get '/p/:id', to: 'products#show', as: 'product'
  devise_for :users, controllers: {
               omniauth_callbacks: 'users/omniauth_callbacks',
               registrations: 'users/registrations',
               #sessions: 'users/sessions'
             }
  devise_for :admin_users, path: 'adusers', controllers: {
    sessions: 'adusers/sessions',
    registrations: 'adusers/registrations',
  }

end
