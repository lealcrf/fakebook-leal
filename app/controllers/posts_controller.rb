class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order('created_at DESC').all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
  end

   # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

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
