class LikesController < ApplicationController
  before_action :set_store
  before_action :authenticate_user!   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  def create
    @store = Store.find(params[:store_id])
   like = @store.likes.new(user_id: current_user.id)
   like.save
  end

  # お気に入り削除
  def destroy
    @store = Store.find(params[:store_id])
   like = @store.likes.find_by(user_id: current_user.id)
   like.destroy
  end

  private
  def set_store
    @store = Store.find(params[:store_id])
  end
end
