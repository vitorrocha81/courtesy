class UsersController < ApplicationController
	before_action :load_user, except:[:index]
  
  def index
  	@users = User.all
  end

  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  		if @client.save
  			redirect_to @client
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