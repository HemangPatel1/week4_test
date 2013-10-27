class Array

=begin
	def inject3 initial_value=self.first-1
		self.each do |element|
		initial_value = yield(initial_value, element)
		end
		initial_value
	end
=end


	def inject2 initial_value = self.first
		if initial_value == self.first
			self[1..-1].each do |element|
				initial_value = yield(initial_value, element)
			end
		else
			self[0..-1].each do |element|
				initial_value = yield(initial_value, element)
			end
		end
			initial_value
		end
	end

