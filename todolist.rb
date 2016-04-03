class TodoList
	attr_accessor :title, :items

	def initialize(list_title)
		@title = list_title
		@items = Array.new
	end

	def add_item(new_item)
		item = Item.new(new_item)
		@items.push(item)
	end

	def remove_item(item_description)
		self.items.delete_if {|item| item.description == item_description}
	end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

	def self.find(title)
		TodoList.all.find {|todo| todo.title == title}
	end

	def rename(new_name)
		self.title = new_name
	end

	def print_info
		puts "**********"
		puts "#{self.title}"
		puts "**********"
		self.items.each_with_index do |item, index|
			puts "#{item.print_info}"
		end
	end
end
