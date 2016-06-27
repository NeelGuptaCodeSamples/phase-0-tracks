arsenal_fc = []

coach = "Arsene Wenger"

arsenal_fc << coach

p arsenal_fc

arsenal_fc << "Alexis Sanchez"
arsenal_fc << "Olivier Giroud"
arsenal_fc << "Aaron Ramsey"
arsenal_fc << "Theo Walcott"
arsenal_fc << "Hector Bellerin"

p arsenal_fc

arsenal_fc.delete_at(2)

p arsenal_fc

arsenal_fc.insert(2, "Olivier Giroud")

p arsenal_fc

arsenal_fc.delete(arsenal_fc.first)

p arsenal_fc

p arsenal_fc.include?("Hector")








