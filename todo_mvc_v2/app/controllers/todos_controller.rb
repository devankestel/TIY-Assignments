class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
  def todos
    @todos = Todo.all
  end
  def create
    @todo = Todo.create(params[:id])
    @todos = Todo.all
  end
  def edit
    @todo = Todo.find(params[:id])
  end
  def update
    @todo = Todo.find(params[:id])
    @todo = Todo.update(title: request.query["title"])
    @todos = Todo.all
  end
  def destroy
    @todo = Todo.find(params[:id]).destroy
    @todos = Todo.all
  end
  def toggle
    @todos = Todo.all
    if @todos.all_completed?
      @todos.update_all(complete: false)
    else
      @todos.update_all(complete: true)
    end
  end
  def active
    @todos = Todo.where(complete: false)
  end
  def completed
    @todos = Todo.where(complete: true)  
  end
  def clear_completed
    @todos = Todo.destroy_all
  end  
end
