class ContactMailer < ActionMailer::Base
	default to: 'alex.swiec@gmail.com'

	def contact_email(name, email, body)
		@name = name
		@email = email
		@body = body

		mail(from: email, subject: 'contact Form Message')
	end 
end