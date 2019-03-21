class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @full_name = @user.first_name.capitalize + " " + @user.last_name.capitalize
  end
end
