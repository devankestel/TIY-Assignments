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
  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description], blog_id: params[:blog_id])
    render :index
  end
end
