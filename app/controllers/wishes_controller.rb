class WishesController < ApplicationController
  def index
    @wishes = Wish.all
  end

  def new
    @wish = Wish.new
  end

  def create
    Wish.create(wish_params)
    redirect_to root_path
  end

  def edit
    @wish = Wish.find(params[:id])
  end

  def update
    @wish = Wish.find(params[:id])
    @wish.update_attributes(wish_params)
    redirect_to root_path

  end

  def show
    @wish = Wish.find(params[:id])
  end

  def wish_params
    params.require(:wish).permit(:message,:donation)
  end

end
