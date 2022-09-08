class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render 'dogs/index'
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render 'dogs/show'
  end
  
  def new
    render 'dogs/new'
  end

  def create
    dog = Dog.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      image_url: params[:image_url]
    )
    dog.save
    redirect_to "/dogs"
  end
end
