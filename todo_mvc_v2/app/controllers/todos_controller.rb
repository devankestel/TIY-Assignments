class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todos_count = Todo.count
    @todos_render = @todos_count
    @flag = 'all'
  end
  def create
    todo = Todo.create(params[:id])
    redirect_to '/todos'
  end
  def edit
    todo = Todo.find(params[:id])
    todo.editing? = true
    render: index
  end
  def update
    Todo.find(params[:id])update(title: request.query["title"])
    redirect_to '/todos'
  end
  def destroy
    Todo.find(params[:id]).destroy
    redirect_to '/todos'
  end
  def toggle
    @todos = Todo.all
    if @todos.all_completed?
      @todos.update_all(complete: false)
    else
      @todos.update_all(complete: true)
    end
    redirect_to '/todos'
  end
  def toggle_one
    Todo.find(params[:id]).toggle!(:complete)
    redirect_to '/todos'
  end
  def active
    @todos = Todo.where(complete: false)
    @todos_render = Tood.count
  end
  def completed
    @todos = Todo.where(complete: true)
    @todos_render = Todo.count  
  end
  def clear_completed
    @todos = Todo.where(complete: true).destroy_all
    @todos_render = Todo.count
  end  
end
