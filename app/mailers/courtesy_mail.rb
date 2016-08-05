class CourtesyMail < ApplicationMailer
	default from: "nelsonvitorsrocha@gmail.com"
	default cco: "contato@donatellamistica.com.br"

  def user_email(user)
    @user = user
    mail(to: @user.email, subject: 'Obrigado pela inscrição!')
  end
end
