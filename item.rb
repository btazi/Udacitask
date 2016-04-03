class Item
	attr_accessor :description, :completed_status
	
	def initialize(item_description)
		@description = item_description
		@completed_status = false
	end

	def toggle_completion
		self.completed_status = !self.completed_status
	end

	def completed?
		self.completed_status
	end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

	def self.find(description)
		Item.all.find {|item| item.description == description}
	end

	def print_info
		puts "#{self.description}: #{self.completed? ? "Completed" : "Not Completed"}"
	end
end
