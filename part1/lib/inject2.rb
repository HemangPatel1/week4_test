class Array

	def inject2 total
		self.each do |element|
		total = yield(total, element)
		end
		total
	end

end

