class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render 'dogs/index'
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render 'dogs/show'
  end
end
