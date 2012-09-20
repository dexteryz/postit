class VotesController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		if params[:direction] == 'up'
			@post.votes.create(votes: true)
			msg = "Upvoted #{@post.title}"
		else
			@post.votes.create(votes: false)
			msg = "Downvoted #{@post.title}"
		end

		respond_to do |format|
			format.html { redirect_to posts_path, notice: msg }
			format.js
		end
	end
end