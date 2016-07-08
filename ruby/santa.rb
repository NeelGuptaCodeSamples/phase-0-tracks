class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender
  
  def initialize(ethnicity, gender)
    # puts "initializing Santa class..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = Random.new
    @age = @age.rand(140)

  end

  def speak
    puts "Ho, ho ho! Haaapppyy holidays!"
  end

  # Getters
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    puts "#{reindeer_name.upcase}! Look what you did!"
    moved_reindeer = @reindeer_ranking.index(reindeer_name).to_int
    @reindeer_ranking.pop(moved_reindeer)
    # p @reindeer_ranking
    reindeer_name
  end

end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("Chocolate Chip")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
sample_genders = ["agender", "bigender", "male", "female", "gender fluid", "N/A"]
sample_ethnicity = ["black", "latino", "white", "Asian", "prefer not to say", "Mystical Creature", "N/A"]

20.times do |i|
  santas << Santa.new(sample_genders.sample, sample_ethnicity.sample)
end

# p santas
# RANDOM AGES
p santas[0].age
p santas[1].age
p santas[2].age

santa = Santa.new("Male", "Indian")
santa.celebrate_birthday
santa.get_mad_at("Vixen")
p santa.age
santa.ethnicity
santa.gender = "New gender"


