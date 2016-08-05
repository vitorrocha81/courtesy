class UsersController < ApplicationController


	before_action :load_user, only:[:show]
  
  def index
  	@users = User.all
  	@total_users = User.all.count
  end

  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  		if @user.save
        CourtesyMail.user_email(@user).deliver
  			redirect_to @user
  		else
  		render 'new'
  		end	
  	
  end

  private

  def load_user
  	@user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:name, :email, :phone, :company, :position)
  	
  end
end