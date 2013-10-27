module SendSMS

require 'twilio-ruby'

	def send_sms_to_customer

		time_of_order = (Time.now.strftime("%H:%M"))
		time_plus_one_hour  = (Time.now + 60 * 60).strftime("%H:%M")

		account_sid = 'AC9de9acf55c650aa820f796acb938f4f6'
		auth_token = '3a0518a5cd123983e3cd0911c3711dfb'

		client = Twilio::REST::Client.new account_sid, auth_token

		client.account.sms.messages.create(
			:from => "+441270261027",
			:to => "+447949846543",
			:body => "Thank you! Your order was placed at #{time_of_order} and will be delivered within the next hour - by #{time_plus_one_hour}")

	rescue Twilio::Rest::RequestError => e
		    puts e.message
	end
end
