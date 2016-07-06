class Santa
  
  def initialize
    puts "initializing Santa class..."
  end

  def speak
    puts "Ho, ho ho! Haaapppyy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end

end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Chocolate Chip")