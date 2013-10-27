require 'inject2'

describe Array do

	it 'returns 10 as the total of the array [1,2,3,4]' do
		expect([1,2,3,4].inject2(0) {|memo, number| memo + number}).to eq 10
	end

	it 'returns 24 as the product of the array [1,2,3,4]' do
		expect([1,2,3,4].inject2(1) {|memo, number| memo * number}).to eq 24
	end

	it 'can join a set of strings if given an array' do
		expect(['hemang', 'likes', 'food'].inject2('') { |memo, string| memo + string } ).to eq 'hemanglikesfood'
	end

	it 'can join a set of strings from a given array to another string' do
		expect(['hemang', 'likes', 'food'].inject2('the great') { |memo, string| memo + string} ).to eq "the greathemanglikesfood"
	end

	it 'can find the longest word out of an array of strings' do
		longest = %w{ hemang likes food }.inject2('') do |memo, word|
			memo.length > word.length ? memo : word
		end
		expect(longest).to eq 'hemang'
	end

	it 'still returns 10 as the total of the array [1,2,3,4] without passing an argument' do
		expect([1,2,3,4].inject2 { |memo, number| memo + number }).to eq 10
	end

	it 'still returns 24 as the product of the array [1,2,3,4] without passing an argument' do
		expect([1,2,3,4].inject2 {|memo, number| memo * number}).to eq 24
	end

	it 'still can join a set of strings if given an array without passing an argument' do
		expect(['hemang', 'likes', 'food'].inject2 { |memo, string| memo + string } ).to eq 'hemanglikesfood'
	end

	it 'still can find the longest word out of an array of string without passing an arguments' do
		longest = %w{ hemang likes food }.inject2 do |memo, word|
			memo.length > word.length ? memo : word
		end
		expect(longest).to eq 'hemang'
	end


end
