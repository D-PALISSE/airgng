class MyGoatsController < ApplicationController
  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(my_goat_params)
    @goat.owner = current_user
    if @goat.save
      redirect_to my_goats_path
    else
      render :new
    end
  end

  private

  def my_goat_params
    params.require(:goat).permit(:name, :description, :photo, :specie, :address, :daily_price, :photo)
  end
end
