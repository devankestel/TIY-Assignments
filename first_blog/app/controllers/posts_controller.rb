class PostsController < ApplicationController
  def index
  end
  def new
    @post = Post.new
    @blog = Blog.find(params[:blog_id])
    @author = Author.find(params[:author_id])
  end
  def show
  end
end
