class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @post = Post.find(params[:post_id]) # allows you to use post_id, go into db, look up post, and set it as instance variable, then can iterate through its comments
  end


  def create
    @post = Post.find(params[:post_id]) # gets the post that was created
    @comment = Comment.new(params[:comment]) # params comment is going to return the inner hash, the method Comment.create expects the hash
    @comment.post_id = @post.id

    respond_to do |format|
      if @comment.save
        format.html {redirect_to post_comments_path(@post), notice: "Comment created!"}

      else
        format.html {redirect_to post_comments_path(@post), notice: "Comment not created!"}
      end
    end
  end
  
end
