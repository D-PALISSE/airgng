class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # before_action :set_goat, only: [:show]

  def index
    @goats = Goat.all
  end

  def show
    @goat = Goat.find(params[:id])
  end

  private

  # def set_goat
  #   @goat = Goat.find(params[:id])
  # end

  def goat_params
    params.require(:goat).permit(:name, :address, :specie, :description, :photo, :daily_price)
  end
end
