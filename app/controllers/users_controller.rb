class UsersController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @user = User.find(params[:id])
    likes = Like.where(user_id: current_user.id).pluck(:store_id)  # ログイン中のユーザーのお気に入りのstore_idカラムを取得
    @like_list = Store.find(likes)     # storesテーブルから、お気に入り登録済みのレコードを取得
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
end
