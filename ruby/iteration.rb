arsenal_fc = ["Alexis Sanchez", "Olivier Giroud", "Theo Walcott", "Aaron Ramsey", "Hector Bellerin", "", "Laurent Koscielny", "Nacho Monreal", "Takuma Asano", ""]

new_arsenal_fc = []

player_position = {
  forward: "Alexis Sanchez",
  midflied: "Aaron Ramsey",
  defense: "Nacho Monreal"
}

# # RELEASE 1
# # Original Data
# puts "Original Data:"
# p arsenal_fc
# p new_arsenal_fc
# p player_position

# arsenal_fc.each do |player|
#   new_arsenal_fc << player + " -> NEW"
# end

# player_position.each do |position, player|
#   puts "#{player} is a #{position}"
# end

# arsenal_fc.map! do |player|
#   # puts player
#   player.next
# end

# player_position

# # Modified Data
# puts "Modified Data:"
# p arsenal_fc
# # p new_arsenal_fc
# p player_position

# RELEASE 2

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

# Array delete
# Before
p numbers

numbers.each do |number|
  next if number.even? == true
  numbers.delete number
end

# After
p numbers

# Hash iteration

numbers_hash = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6
}

numbers_hash.delete_if { |int, str| str >= 3 }
p numbers_hash


