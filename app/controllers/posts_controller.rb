class PostsController < ApplicationController
  before_filter :authenticate_user!
  # GET /posts
    def index
    @posts = Post.order('created_at DESC').all
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new #retorna um objeto vazio.
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

   # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @post.user = current_user

    if @post.save
      redirect_to posts_path
    else
      render action: "new"
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end
end
