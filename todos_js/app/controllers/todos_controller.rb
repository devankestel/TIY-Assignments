class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
  def clear_complete
    @todos = Todo.all
    @todos.where(complete: true).destroy_all
    #redirect_to todos_path
  end
  def active
  end
end
