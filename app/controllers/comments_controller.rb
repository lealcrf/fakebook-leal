class CommentsController < ApplicationController
  before_filter :get_post

   # POST /comments
  def create
    @comment = Comment.new(params[:comment])
    @comment.post = @post

      if @comment.save
        redirect_to @post #ou post_path(@post)
      else
        render action: "new"
      end
  end

  # DELETE /comments/1
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  private
  def get_post
    @post = Post.find(params[:post_id])
  end

end