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

  def pick_team
  end

  def score
  end

  def substitute(player)
  end

  def buy_player(price)
  end


end

arsenal = FootballClub.new("Arsenal", "Arsene Wenger", 50)
p arsenal.team_name
p arsenal.spending_cap

# Use class in program

