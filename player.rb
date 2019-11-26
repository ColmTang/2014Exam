

class Player
  attr_reader :no_of_guesses, :name
  def initialize(name,oracle,range)
    @name = name
    @oracle = oracle
    @range = range
    @no_of_guesses = 0
  end
end