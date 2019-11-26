

class Random_Player
  def initialize(name,oracle,range)
    @name = name
    @oracle = oracle
    @range = range
  end

  def guess
    player_guess = rand(@range)
    @oracle.is_it?(player_guess)
  end
end