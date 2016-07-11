# RELEASE 0
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Boss
  include Shout
end

class Coach
  include Shout
end

boss = Boss.new
boss.yell_angrily("You're late")
boss.yell_happily("Good job")

coach = Coach.new
coach.yell_angrily("Run faster")
coach.yell_happily("Well done")
