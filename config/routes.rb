Rails.application.routes.draw do
  #deviseの設定
   devise_for :users, skip: :all
     devise_scope :users do
      get '/users/sign_in' => 'user/sessions#new', as: :new_user_session
      post '/users/sign_in' => 'user/sessions#create', as: :user_session
      delete '/users/sign_out' => 'user/sessions#destroy', as: :destroy_user_session
   end
   
   devise_for :stores, skip: :all
    devise_scope :store do
    get '/stores/sign_in' => 'store/sessions#new', as: :new_store_session
    post '/stores/sign_in' => 'store/sessions#create', as: :store_session
    delete '/stores/sign_out' => 'store/sessions#destroy', as: :destroy_store_session
    get '/stores/sign_up' => 'store/registrations#new', as: :new_store_registration
    post '/stores'=> 'store/registrations#create'
   end

    #ホーム
    root :to => "homes#top"
    get "/about" =>"homes#about"

    #ジャンル
    resources :genres, only: [:create, :update]

    #お気に入り
    resources :likes, only: [:index, :create, :destroy]

    #投稿
    resources :posts, only: [:new, :index, :edit, :create, :destroy, :update]

    #会員
    resources :users, only: [:index, :show, :edit, :update]
    get '/users/unsubscribe' => 'users#unsubscribe'
    patch '/users/withdraw' => 'users#withdraw'

    #店舗
    resources :stores, only: [:show, :edit, :update, :destroy]
    get '/stores/unsubscribe' => 'stores#unsubscribe'
    patch '/stores/withdraw' => 'stores#withdraw'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
