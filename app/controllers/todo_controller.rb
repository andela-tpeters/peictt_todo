class TodoController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def edit
    @todo = Todo.find_by id: params["id"].to_i
  end

  def create
    @todo = Todo.create params["todo"]
    redirect_to "/todos"
  end

  def show
    @todo = Todo.find_by id: params["id"].to_i
  end

  def update
    todo = Todo.find_by id: params["id"].to_i
    todo.update params["todo"]
    redirect_to "/todos"
  end

  def destroy
    todo = Todo.find_by id: params["id"].to_i
    todo.destroy
    redirect_to "/todos"
  end
end
