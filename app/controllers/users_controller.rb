class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      redirect_to login_url, notice: 'Thank you for signing up!'
    else
      flash[:warning] = @user.errors.full_messages
      redirect_to request.referer
      #render :new
    end
  end

  private

	def allowed_params
	  params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
