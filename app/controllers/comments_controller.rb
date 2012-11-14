class CommentsController < ApplicationController
  before_filter :get_post

  # GET /comments
  def index
    @comments = @post.comments
  end

  # GET /comments/1
  def show
    @comment = Comment.find(params[:id])
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  def create
    @comment = Comment.new(params[:comment])
    @comment.post = @post

      if @comment.save
        redirect_to [@post , @comment]
      else
        render action: "new"
      end
  end

  # PUT /comments/1
  def update
    @comment = Comment.find(params[:id])

      if @comment.update_attributes(params[:comment])
        redirect_to [@post , @comment]
      else
        render action: "edit"
      end
  end

  # DELETE /comments/1
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_comments_url(@post)
  end

  private
  def get_post
    @post = Post.find(params[:post_id])
  end

end