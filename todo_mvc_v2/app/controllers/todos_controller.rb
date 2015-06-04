class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todos_left = Todo.where(complete: false).count
    @flag = 'all'
  end
  def create
    #params = params[:title].strip!
    todo = Todo.create(title: params[:title])
    redirect_to '/todos'
  end
  def edit
    todo = Todo.find(params[:id])
    todo.editing = true
    @todos = Todo.all
    render :index
  end
  def update
    Todo.find(params[:id]).update(title: params[:title].strip!)
    redirect_to '/todos'
  end
  def destroy
    Todo.find(params[:id]).destroy
    redirect_to '/todos'
  end
  def toggle
    @todos = Todo.all
    @todos_left = Todo.where(complete: false).count
    if @todos.all_completed?
      @todos.update_all(complete: false)
    else
      @todos.update_all(complete: true)
    end
    #@todos = Todo.all
    redirect_to '/todos'
  end
  def toggle_one
    Todo.find(params[:id]).toggle!(:complete)
    @todos = Todo.all
    @todos_left = Todo.where(complete: false).count
    render :index
  end
  def active
    @todos_left = Todo.where(complete: false).count
    @todos = Todo.where(complete: false)
    render :index
  end
  def completed
    @todos_left = Todo.where(complete: false).count
    @todos = Todo.where(complete: true)
    render :index  
  end
  def clear_completed
    @todos = Todo.destroy_all(complete: true)
    redirect_to '/todos'
  end  
end
