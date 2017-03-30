class PostsController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @post = Post.new
  end

  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
  if @post.new
    redirect_to posts_path
  end
end
