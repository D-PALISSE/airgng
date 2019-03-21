class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # before_action :set_goat, only: [:show]

  def index
    if params[:query].present?
      sql_query = " \
              goats.address @@ :query \
            "
      @goats = Goat.where("goats.address @@ :query", query: "%#{params[:query].split(' ').join(' OR ')}%")
    else
      @goats = Goat.all
    end
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
