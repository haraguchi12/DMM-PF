class PostsController < ApplicationController
  def new
    @post= Post.new
  end

  def index
    @posts = Post.all
    @post = Post.new

  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.store_id = current_store.id
    if @post.save
      flash[:notice] = "successfully"
      redirect_to post_path(@post.id)
    else
      @store = Store.find_by(id: current_store.id)
      @posts = Post.all
      flash.now[:notice] = ""
      # render :index
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.store_id = current_store.id
    if @post.update(post_params)
      flash[:notice] = "You have updated post successfully."
       redirect_to post_path(@post.id)
    else
      @posts = Post.all
      flash.now[:notice] = ""
       render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
