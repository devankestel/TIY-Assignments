class BlogsController < ApplicationController
  def index
  end
  def show
  end
  def new
    @blog = Blog.new
    @author = Author.new
  end
  def create
    @author = Author.create(name: params[:author][:name])
    @blog = Blog.create(title: params[:blog][:title], description: params[:blog][:description], author_id: @author.id)
    redirect_to '/blogs'
  end
end
