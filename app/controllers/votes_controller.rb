class VotesController < ApplicationController
	def create
		post = Post.find(params[:post_id])
		post.votes.create(votes: true)
		redirect_to posts_path, notice: "Voted on #{post.title}"
	end
end