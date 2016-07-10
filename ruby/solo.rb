# # # Release 0 / 1 :
# # Design a class
# # > 3 attributes
# #   > 2 data types
# # > 3 methods
# #   > at least 1 takes argument

# # Class outline:
# Football Club
#   > Team Name
#   > Team Roster
#   > Coach
#   > Max spending salary
#   > Starting XI
#     > Forward
#     > Midfield
#     > Defense
#     > Keeper
#   > Bench


# Write Class
class FootballClub
  attr_reader :team_name, :team_roster, :starting_xi, :bench
  attr_accessor :coach, :spending_cap

  def initialize(team_name, coach)
    # puts "Initializing FootballClub class..."
    @team_name = team_name
    @coach = coach
    @spending_cap = spending_cap
    @team_roster = []
    @starting_xi = []
    @bench = []

  end

  def add_to_roster(player)
    @team_roster << player
  end

  def add_to_xi(player)
    @starting_xi << player
  end

  def sell_player(player, price)
    # Check if the player is on the team_roster
    p @team_roster.include?(player)
    # If not, error message
    # If yes, remove player from team roster
    # Add price to spending_cap
  end

  def substitute(player_off, player_on)
    # Check if player is on the bench
    # Check if player is on the pitch
    # Replace player_off with player_on in starting_xi
    # Replace player_on with player_off in bench
    # Print new starting_xi
    # Print new bench
  end

  def buy_player(player, price)
    # Check if price is within spending_cap
    # If so, add player to team roster
    # Subtract price of player from spending_cap
    # Print remaining spending_cap
  end

  def team_data
  end

end

# Test code
# arsenal = FootballClub.new("Arsenal", "Arsene Wenger", 50)
# p arsenal.team_name
# p arsenal.spending_cap
# arsenal.add_to_roster("Santi Cazorla")
# p arsenal.team_roster
# p arsenal.starting_xi


###
# User Interface
def user_interface
  puts "---------------------------------------"
  puts "CREATE YOUR OWN FOOTBALL TEAM!"
  puts "---------------------------------------"
  puts "Here is the information we need:"
  puts "1. Team name"
  puts "2. Coach"
  puts "3. Players"
  puts "4. Spending Capacity"
  puts "If you want to create a random team, type 'random'."
  puts "Or, type 'done' to view your creations and end the program."


  # create_team

  randomize_team

  done

end

###
# Exit program method
def done
  puts "ending program"
end
###

def create_team
  teams = []
  # puts "What would you like to name your team?"
  # t_name = gets.chomp

  # puts "Who is your coach?"
  # coach = gets.chomp

  # puts "What is your team's spending capacity?"
  # spending_cap = gets.to_i

  user_team = FootballClub.new(t_name, coach)
  p user_team

  random_players = []



  teams << user_team
  p teams

  # user_interface

  def done
    puts "ending program"
  end
end

def randomize_team
  epl_teams = ["Liverpool", "Chelsea", "Arsenal", "West Ham", "Manchester United", "Man City", "Leiscester City", "Tottenham Hotspur", "South Hampton", "West Brom", "Stoke City", "Aston Villa"]
  epl_coaches = ["Arsene Wenger", "Jose Mourinho", "Pep Guordiola", "Louis Van Gaal", "Gus Hiddiks", "Mauricio Pochettino", "Jurgen Klopp", "Claudio Ranieri"]
  epl_players = ["Eden Hazard", "Alexis Sanchez", "Olivier Giroud", "Santi Cazorla", "Hector Bellerin", "Takuma Asano", "Wayne Rooney", "Zlatan Ibrahimovic", "Harry Kane", "Raheem Sterling", "Diego Costa", "James Rodriguez", "Aaron Ramsey", "Thomas Koscielny", "Gabriel", "Jamie Vardy", "Daniel Sturrige"]
  spending_cap = Random.new
  # spending_cap = spending_cap(200)

  
  10.times do |team, coach, player|
    team = epl_teams.sample
    coach = epl_coaches.sample
    players = epl_players.sample(8)
    
  end

end
### Driver code
user_interface




