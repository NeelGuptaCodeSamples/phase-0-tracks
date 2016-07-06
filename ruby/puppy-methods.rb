class Puppy

  def initialize
    puts "initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!!!"
    toy
  end

  def speak(words)
    puts "Look I can speak: '#{words.upcase}!'"
    words
  end

  def roll_over(roll_command)
    puts "I only roll over when you say '#{roll_command}'"
    roll_command
  end

  def dog_years(human_years)
    barks = human_years * 7
    puts "That means I'm #{barks} many dog years!"
    barks
  end

  def stay(stay_command)
    puts "**STAYING**"
    stay_command
  end

end

puppy = Puppy.new
puppy.fetch("TOY!")
puppy.speak("speaking")
puppy.dog_years(4)
puppy.roll_over("NOW")
puppy.stay("Stay")




