Rails.application.routes.draw do
  #deviseの設定
   devise_for :stores, path:'store', controllers: {
    sessions: 'store/registrations',
    registrations: 'store/registrations'
}
  devise_for :users, path: 'user', controllers: {
    sessions: 'user/sessions'
  }

  get 'stores/show'
  get 'stores/edit'
  get 'stores/create'
  get 'stores/destroy'
  get 'stores/unsubscribe'
  get 'stores/withdraw'
  get 'posts/new'
  get 'posts/index'
  get 'posts/edit'
  get 'posts/create'
  get 'posts/update'
  get 'posts/destroy'
  get 'genres/create'
  get 'genres/update'
  get 'likes/index'
  get 'likes/create'
  get 'likes/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/unsubscribe'
  get 'users/withdraw'
  get 'homes/top'
  get 'homes/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
