class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.all
  end

  def create
    prototype.create(prototype_params)
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image )
  end


end


