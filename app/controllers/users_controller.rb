class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      sign_in @user
      flash[:success] = 'Welcome to BestBay!'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show

  end

end
