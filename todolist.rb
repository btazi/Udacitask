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

end
