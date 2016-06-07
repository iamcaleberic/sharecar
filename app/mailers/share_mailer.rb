class ShareMailer < ApplicationMailer

	def share_create_email(share)
		@share = share
		@url  = 'http://40.113.121.30/shares'
		mail(from:"no-reply@sharecar.io", to: @share.email, subject: ' Sharecar ')
	end
end
