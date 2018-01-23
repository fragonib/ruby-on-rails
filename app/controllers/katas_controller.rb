class KatasController < ApplicationController
  def index
    @katas = Kata.all
    render :index
  end
  def show
    @kata = Kata.find(params[:id])
    render :show
  end
  def new
    render :new
  end
  def create
    kata = Kata.new(title: params[:title], description: params[:description])
    kata.save
    redirect_to kata_path(kata.id)
  end
end
