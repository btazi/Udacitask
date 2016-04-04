require "csv"
require 'fileutils'

class TodoList
	attr_accessor :title, :items

	def initialize(list_title)
		@title = list_title
		@items = Array.new
	end

	def add_item(description, due_date="Tomorrow", important=false)
		item = Item.new(description, due_date, important)
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
		self.items.each do |item|
			puts "#{item.print_info}"
		end
	end

	def export_to_csv
		path = "data/#{self.title}.csv"
		FileUtils.rm path if File.file?(path)
		CSV.open(path, "wb") do |csv|
			csv << ["Description", "Completed", "Due Date", "Is Important ?"]
			self.items.each do |item|
				csv << [item.description, (item.completed? ? "Completed" : "Not Completed"), item.due_date, (item.important ? "yes" : "no")]
			end
		end
	end

end
