class UserController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def signin
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if User.exists?(email: user_params[:email])
      flash.now[:alert] = "Email already exists"
      render :signin, status: :unprocessable_entity
    elsif @user.save
      redirect_to login_path, notice: 'Signin was successfully created.'
    else
      render :signin, status: :unprocessable_entity
    end
  end
  
  def login
    if request.post?
      email = params[:email]
      password = params[:password]
  
      @user = User.find_by(email: email)
      if @user&.authenticate(password)
        session[:user_id] = @user.id
        redirect_to docs_path, notice: "Logged in successfully"  # Correct path
      else
        flash.now[:alert] = "Invalid email or password"
        render :login, status: :unprocessable_entity
      end
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
