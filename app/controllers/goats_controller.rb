class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @goats = Goat.all
  end
end
