require_relative "todolist"
require_relative "item"

def print_heading
	puts "   __  __    __           _ __             __  "
	puts "  / / / /___/ /___ ______(_) /_____ ______/ /__"
	puts " / / / / __  / __ `/ ___/ / __/ __ `/ ___/ //_/"
	puts "/ /_/ / /_/ / /_/ / /__/ / /_/ /_/ (__  ) ,<   "
	puts "\\____/\\__,_/\\__,_/\\___/_/\\__/\\__,_/____/_/|_|  "
end

def new_list(list_title)
	TodoList.new(list_title)
	puts "new list: #{list_title}"
end

print_heading
