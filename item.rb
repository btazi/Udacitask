class Item
	attr_accessor :description, :completed_status, :due_date, :important
	
	def initialize(item_description, due_date="Tomorrow", important=false)
		@description = item_description
		@completed_status = false
		@due_date = due_date
		@important = important 
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

	def important?
		self.important
	end

	def print_info
		puts "#{self.description}: #{self.completed? ? "Completed" : "Not Completed"} - when: #{self.due_date} #{"- IMPORTANT" if self.important?}"
	end
end
