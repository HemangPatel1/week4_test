require 'takeaway'

	describe Takeaway do

		let(:takeaway) { Takeaway.new }

		it 'should calculate the total price of Slaw and Chips as being 6' do
			order_from_person = { "Slaw" => 3, "Chips" => 3 }
			expect(takeaway.calculated_total_price_of(order_from_person)).to eq 6
		end

		it 'should raise an error' do
			expect {total_order_error}.to raise_error
		end		

		it 'should raise an error if the received order has an incorrect total price attached to it' do
			expect {takeaway.receive_order({ "House Slaw" => 3}, 2)}.to raise_error
		end

		it 'should not raise an error if the received order has the correct total price attached to it' do
			expect {takeaway.receive_order({ "House Slaw" => 3, "Dripping Chips" => 3}, 6)}.not_to raise_error
		end

	end	
