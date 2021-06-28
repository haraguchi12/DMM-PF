class UsersController < ApplicationController
  def index
    @posts = Post.all.page(params[:page]).per(5) # ページネーションをつけたいデータに.page(params[:page])を追加 per(10)⇨1ページあたり表示したい数
  end

  def show
    @user = User.find(params[:id])
    
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
end
