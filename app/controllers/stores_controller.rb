class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    @posts = @store.posts
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
end
