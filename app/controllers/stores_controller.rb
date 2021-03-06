class StoresController < ApplicationController
  def show
    @stores = Store.where(posts: params[:id])
    @store = @stores.first
    @posts = Post.where(store_id: @store.id).page(params[:page]).per(5)
  end

  def edit
    @store = Store.find_by(id: current_store.id)
  end

  def create
  end

  def update
      @store = Store.find(params[:id])
     if @store.update(store_params)
       flash[:notice] = "successfully"
      redirect_to store_path(@store.id)
     else
       flash.now[:notice] = ""
      render :edit
     end
  end

  def destroy
  end

  def unsubscribe
  end

  def withdraw
  end

  private

  def store_params
    params.require(:store).permit(:name, :image, :introduction)
  end
end
