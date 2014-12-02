class UsersController < ApplicationController
  def new
    @user = User.new
    @user.build_profile
  end
  def create
      @user = User.new(user_profile_params)
    if @user.save
      sign_in @user
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_profile_params
    params.require(:user).permit(:email, :password, :password_confirmation, profile_attributes: [:first_name, :last_name, :address_line1, :address_line2, :city, :state, :zip, :country, :phone])
  end
end
