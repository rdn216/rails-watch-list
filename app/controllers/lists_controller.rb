class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
  end
  def new
  end
  def show
    @list = List.find(params[:id])
  end
end