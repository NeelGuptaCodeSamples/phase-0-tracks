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

def create_list(item)
  list = {}
  new_item = item.split(" ")
  
  new_item.each do |food|
    list[food] = 0
  end
  return list
end

def add_to_list(grocery, item, q_item=0)
  grocery[item] = q_item
end

def remove_from_list(grocery, item)
  grocery.delete(item)
end

def update_quantity(grocery, item, new_quantity)
  grocery[item] = new_quantity
end

def print_list(grocery)
  grocery.each do |item, quantity|
    puts "We need #{quantity} #{item}."
  end
end

grocery = create_list("")
# create_list("Neel")

add_to_list(grocery, "Lemonade", 2)
add_to_list(grocery, "Tomatoes", 3)
add_to_list(grocery, "Onion", 1)
add_to_list(grocery, "Ice Cream", 4)

remove_from_list(grocery, "Lemonade")

update_quantity(grocery, "Ice Cream", 1)

print_list(grocery)






