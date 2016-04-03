require_relative 'udacitask.rb'

# Creates a new todo list
list = TodoList.new "Shopping List"

# Add four new items
list.add_item "Cakes"
list.add_item "Apples"
list.add_item "Beers"
list.add_item "Eggs"

# Print the list
list.print_info

# Delete the first item
list.remove_item "Cakes"

# Print the list
list.print_info

# Delete the second item
list.remove_item "Apples"

# Print the list
list.print_info

# Update the completion status of the first item to complete
beers = Item.find "Beers"
beers.toggle_completion

# Print the list
list.print_info

# Update the title of the list
list.rename "What to buy when I'm hungry"

# Print the list
list.print_info
