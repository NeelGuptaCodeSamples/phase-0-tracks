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

  def initialize(team_name, coach, spending_cap)
    puts "Initializing FootballClub class..."
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

end

arsenal = FootballClub.new("Arsenal", "Arsene Wenger", 50)
p arsenal.team_name
p arsenal.spending_cap
arsenal.add_to_roster("Santi Cazorla")
p arsenal.team_roster
p arsenal.starting_xi

# Use class in program

