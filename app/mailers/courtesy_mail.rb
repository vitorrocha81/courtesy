class CourtesyMail < ApplicationMailer
	default from: "nelsonvitorsrocha@gmail.com"

  def user_email(user)
    @user = user
    mail(to: @user.email, subject: 'Obrigado pela inscrição!')
  end

  def friend_email(user, friend)
    @user = user
  	@friend = user.friend
  	mail(to: @user.friend.email, bcco: @user.email,  subject: 'Indicação de <%= @user.email %>, para concorrer a um de nossos eventos!')
    redirect_to @user
  end
end
