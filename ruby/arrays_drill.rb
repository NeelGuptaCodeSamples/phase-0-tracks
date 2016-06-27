def build_array(int, str) 
  new_array = [int, str, nil]
  p new_array
end

def add_to_array(ary, str)
  ary << str
  p ary
end

arsenal_fc = []

coach = "Arsene Wenger"

# arsenal_fc << coach

p arsenal_fc

arsenal_fc << "Alexis Sanchez"
arsenal_fc << "Olivier Giroud"
arsenal_fc << "Aaron Ramsey"
arsenal_fc << "Theo Walcott"
arsenal_fc << "Hector Bellerin"

p arsenal_fc

# arsenal_fc.delete_at(2)

# p arsenal_fc

# arsenal_fc.insert(2, "Olivier Giroud")

# p arsenal_fc

# arsenal_fc.delete(arsenal_fc.first)

# p arsenal_fc

# p arsenal_fc.include?("Hector")

arsenal_leadership = ["Emirates Airways", coach]

whole_afc = arsenal_fc + arsenal_leadership

p whole_afc

build_array(1, "two")

add_to_array(["a", "b", "c", 1, 2], 3)

add_to_array(["a", "l", "gh", 1, 33], 14)



