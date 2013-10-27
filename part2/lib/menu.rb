module Menu

	def initialize
	 menu_list = {	"Fried Chicken Roll" => 12,
			"Rotary Burger" => 12,
			"Chicken Wings" => 5,
			"Smoked Chicken Salad" => 7,
			"Hickory Smoked Duck Hash" => 9,
			"Dripping Chips" => 3,
			"House Slaw" => 3
		}
		@menu_list = menu_list
	end

	def menu
		@menu_list
	end

end
