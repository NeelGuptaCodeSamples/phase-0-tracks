# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # convert to hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash?

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # add new item to list created in create_list method
# output: updated list, hash

# Method to remove an item from the list
# input: item to be removed, quantity optional
# steps: 
  # check if item is in the list
    # if it is not, print error message
    # restart method (?)
    # if it is, remove it from the list
# output: print updated list, hash

# Method to update the quantity of an item
# input: item name, new quantity
# steps:
  # check if item exists in list
  # if so, update hash with new value
  # if not, restart method
# output: updated list, hash

# Method to print a list and make it look pretty
# input: updated version of the list
# steps: format the elements of the hash
  # 1 > Name of List
    # > Item --> Quantity
    # > Item --> Quantity
    # etc.
# output: "pretty" hash

puts "What would you like to add to your grocery list? (add each item with one space between)."
list_string = gets.chomp
puts "List string:"
p list_string

l_array = list_string.split(" ")
puts "List array:" 
p l_array
array_length = l_array.length

list = {}
i = 0
item = l_array[i]
until i == array_length
  list[:item] = list.default
  i += 1
  p list.keys
end

puts "Each:"
l_array.each do |item, quantity|
  puts "#{item}: ##{quantity}"

end

# p list











