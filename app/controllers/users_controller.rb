class UsersController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])


    favorites = Favorite.where(user_id: current_user.id).pluck(:store_id)  # ログイン中のユーザーのお気に入りのstore_idカラムを取得
    @favorite_list = Store.find(favorites)     # storesテーブルから、お気に入り登録済みのレコードを取得
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
end
