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

  def destroy
  end

  def unsubscribe
  end

  def withdraw
  end
end
