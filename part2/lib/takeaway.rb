require_relative 'sendsms'
require_relative 'menu'


class Takeaway
	
include SendSMS
include Menu


	def calculated_total_price_of order_hash_from_person
		order_hash_from_person.inject(0) { |memo, price| memo += price[1] }
	end

	def total_order_error
		raise "You can't even add simple numbers, please buy a calculator or call us!"
	end

	def receive_order(items_and_quantity, total_from_person)
		real_total = calculated_total_price_of(items_and_quantity)
		total_order_error if real_total != total_from_person
		send_confirmation_sms

		puts "Message successfully sent to customer so start cooking - that food isn't going to cook itself!"
	end

	def send_confirmation_sms
		send_sms_to_customer
	end


end
