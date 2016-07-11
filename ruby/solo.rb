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
  attr_reader :starting_xi, :bench
  attr_accessor :coach, :spending_cap, :team_name, :team_roster, :all_teams

  def initialize(team_name, coach, team_roster)
    puts "Initializing FootballClub class..."
    @team_name = team_name
    @coach = coach
    @team_roster = team_roster
    # @spending_cap = spending_cap
    @starting_xi = 11
    # @bench = []
    @all_teams = []    
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
    puts "Team Name: #{@team_name}"
    puts "Coach: #{@coach}"
    puts "Team Roster: #{@team_roster}"
  end

  def done
    puts "ending program"
  end

end

###
# User Interface
def user_interface
  @epl_players = ["Eden Hazard", "Alexis Sanchez", "Olivier Giroud", "Santi Cazorla", "Hector Bellerin", "Takuma Asano", "Wayne Rooney", "Zlatan Ibrahimovic", "Harry Kane", "Raheem Sterling", "Diego Costa", "James Rodriguez", "Aaron Ramsey", "Thomas Koscielny", "Gabriel", "Jamie Vardy", "Daniel Sturrige"]

  puts "---------------------------------------"
  puts "CREATE YOUR OWN FOOTBALL TEAM!"
  puts "---------------------------------------"
  puts "What would you like to name it?"
  t_name = gets.chomp
  puts "Who is the coach?"
  coach = gets.chomp
  puts "How many players would you like to start with (maximum 8)"
  n_players = gets.to_i
  players = @epl_players.sample(n_players)
  create_team(t_name, coach, players)
  puts "How many teams would you like to randomize?"
  n_times = gets.to_i
  randomize_team(n_times)
end

###
# Exit program method
def done
  puts "ending program"
end


def create_team(t_name, coach, players)
  @all_teams = []

  user_team = FootballClub.new(t_name, coach, players)
  puts user_team.team_data


  @all_teams << user_team
  puts "All Teams:"
  p @all_teams
end

def randomize_team(n)
    @epl_teams = ["Liverpool", "Chelsea", "Arsenal", "West Ham", "Manchester United", "Man City", "Leiscester City", "Tottenham Hotspur", "South Hampton", "West Brom", "Stoke City", "Aston Villa"]

    @epl_coaches = ["Arsene Wenger", "Jose Mourinho", "Pep Guordiola", "Louis Van Gaal", "Gus Hiddiks", "Mauricio Pochettino", "Jurgen Klopp", "Claudio Ranieri"]

    @epl_players = ["Eden Hazard", "Alexis Sanchez", "Olivier Giroud", "Santi Cazorla", "Hector Bellerin", "Takuma Asano", "Wayne Rooney", "Zlatan Ibrahimovic", "Harry Kane", "Raheem Sterling", "Diego Costa", "James Rodriguez", "Aaron Ramsey", "Thomas Koscielny", "Gabriel", "Jamie Vardy", "Daniel Sturrige"]


  n.times do |team, coach, players|
    team = @epl_teams.sample
    coach = @epl_coaches.sample
    players = @epl_players.sample(8)
    r_team = FootballClub.new(team, coach, players)
    @all_teams << r_team
  end

  puts "Here is a list of all the teams you've created:"
  puts "#{@all_teams}"
end

### Driver code
user_interface
#TEST




