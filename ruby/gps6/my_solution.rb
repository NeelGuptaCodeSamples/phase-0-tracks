# Virus Predictor
# Neel Gupta
# I worked on this challenge [by myself].
# We spent [1.0] hours on this challenge.

# EXPLANATION OF require_relative
# Necessary for this file (my_solution.rb) to be linked to the separate 
# data file (state_data.rb). Without require_relative, there would be no data
require_relative 'state_data'

class VirusPredictor

  # Initializes the class instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Brings together the 2 effects below (predicted_deaths / speed_of_spread)
  # includes variables passed through by user (instance variables)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # this indicates that the methods following this are only accessible within the class

  # Predicts number of deaths based on pop density, population, and state
  def predicted_deaths 
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end

    number_of_deaths = (@population * x).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determines the multiplier effect of the "spread", 
  # to be used in virus_effects method ^^
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


50.times do |state, p_density, pop|
  state = STATE_DATA.keys.sample
  p_density = STATE_DATA[state][:population_density]
  pop = STATE_DATA[state][:population]
  random_state = VirusPredictor.new(state, p_density, pop)
  random_state.virus_effects
end

#=======================================================================
# Reflection Section








