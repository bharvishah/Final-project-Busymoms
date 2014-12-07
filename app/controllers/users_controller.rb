class UsersController < ApplicationController
  def new
    @user = User.new
    @user.build_profile
  end
  def create
      @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_profile_params)
      redirect_to root_path, alert: "Profile udpated successfully"
    else
      redirect_to root_path(:profile =>"1"), alert: "Error in updating profile"
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def user_profile_params
    params.require(:user).permit(:email, profile_attributes: [:first_name, :last_name, :address_line1, :address_line2, :city, :state, :zip, :phone] )
  end
end
