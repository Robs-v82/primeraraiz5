class PostsController < ApplicationController
  
	def index
		@posts = Post.all
	end

	def create
		post_info = post_params
		post_info.store("agent_id", session[:agent_id])
		Post.create(post_info)
		redirect_to '/admins'
	end

	def show
		@post = Post.find(params[:id])
	end

	private

	def post_params
		params.require(:post).permit(:title, :subtitle, :body, :picture, :alt)
	end

end
