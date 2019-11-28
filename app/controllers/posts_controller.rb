class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #This line below can be deleted because of partial in 'authors/author' we used <%= render partial: "authors/author", locals: {post_author: @post.author} %>
    # @author = @post.author
  end

  def index
    @posts = Post.all
  end
end
