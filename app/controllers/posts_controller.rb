class PostsController < ApplicationController
  def new
    @post= Post.new
  end

  def index
   @posts = Post.all

  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.store_id = current_store.id
    if @post.save
      tags = Vision.get_image_data(@post.image)
      tags.each do |tag|
      @post.tags.create(name: tag)
    end
      #transcode_image
      flash[:notice] = "successfully"
       redirect_to store_path(@post.store.id)
    else
      @store = current_store
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
        redirect_to store_path(@post.store_id)
    else
      @posts = Post.all
      flash.now[:notice] = ""
       render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    store = post.store
    post.destroy
    redirect_to store_path(store)
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end


  #def transcode_image
    #if @post.image_id + '.heic'
    #img = "#{Rails.root}" + '/tmp/uploads/store/' + @post.image_id
    #new_img = "#{Rails.root}" + '/tmp/uploads/store/transed/' + @post.image_id + '.jpg'
    #`heif-convert "#{img}" "#{new_img}"`

      #File.open(new_img, "rb") do |file|
       #@post.image = file
      #end
      #@post.save!
      #break
    #end
end
