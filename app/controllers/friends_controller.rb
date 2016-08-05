class FriendsController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
  	@friends = @user.friends
  end

  def new
  	@user = User.find(params[:user_id])
  	@friend = @user.friends.new
  end

  def show
  end

  def create
  	@user = User.find(params[:user_id])
		@friend = @user.friends.create(friend_params)
		if @friend.save
			redirect_to user_friends_path
		else
		render 'new'
		end	
  end

  def friend_params
  	params.require(:friend).permit(:name, :email, :user_id)
  end

end