# Preview all emails at http://localhost:3000/rails/mailers/courtesy_mail
class CourtesyMailPreview < ActionMailer::Preview

	def user_mail_preview
    CourtesyMail.user_email(User.last)
  	end
end
