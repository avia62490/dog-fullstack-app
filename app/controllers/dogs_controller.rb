class DogsController < ApplicationController

  def index
    @name = 'Fido'
    render 'dogs/index'
  end
end
