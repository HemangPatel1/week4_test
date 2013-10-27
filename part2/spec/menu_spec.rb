require 'menu'

	describe Menu do

	include Menu	

		it 'should be in the form of a hash' do
			expect(menu).to be_a Hash
		end

		it 'should have 7 items on the menu' do
			expect(menu).to have(7).things
		end

		it 'should tell me the price of a fried chicken roll is 12' do
			expect(menu["Fried Chicken Roll"]).to eq 12
		end

	end
