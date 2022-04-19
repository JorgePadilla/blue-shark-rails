class UserRegistrationController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
    @user = User.new
    @patient = Patient.new
    @user.profile = Patient.new
    @user
  end

  def create
  
    @user = User.new(user_params)
    @patient = Patient.new
    @patient.save
    @user.profile = @patient
    #binding.irb
    if @user.save
      auto_login(@user)
      redirect_to dashboard_path, notice: "You successfully register"
    else
      flash.now[:alert] = "Registration failed"
      render :new
    end
  end

  def register
    @user = User.create(user_params)
    @user.profile = Patient.new
    if @user.save
      auto_login(@user)
      redirect_to dashboard_path, notice: "You successfully register"
    else
      flash.now[:alert] = "Registration failed"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end