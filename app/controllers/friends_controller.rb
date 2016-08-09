class FriendsController < ApplicationController
  before_action :set_user

  def create
		@friend = @user.friends.create(friend_params)
		if @friend.save
			redirect_to @user
    else
		render 'new'
		end	
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def friend_params
  	params.require(:friend).permit(:name, :email, :user_id)
  end

end