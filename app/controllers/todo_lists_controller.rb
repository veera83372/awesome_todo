class TodoListsController < ApplicationController
  def index
    @todo_lists=TodoList.all
  end
  def new
  end

  def create
     # render plain: params[:todo_list].inspect
     @todo_list=TodoList.new(params.require(:todo_list).permit(:title, :description))
     if @todo_list.save
       redirect_to @todo_list
     else
       render 'new'
     end
  end
  def show
    @todo_list=TodoList.find(params[:id])
  end
end
