class TodolistsController < ApplicationController
  def new
    @list = List.new
  end
  
  def index
    @lists = List.all
  end
  
  def show
    @list = List.find(params[:id])
  end
  
  def edit
    @list = List.find(params[:id])
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to todolist_path(list.id)
  end
  
  def update
    
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
