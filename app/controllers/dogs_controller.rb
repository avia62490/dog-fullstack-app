class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render 'dogs/index'
  end
end
