class Item
	attr_accessor :description, :completed_status
	
	def initialize(item_description)
		@description = item_description
		@completed_status = false
	end
end
