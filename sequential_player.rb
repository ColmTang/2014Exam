require_relative 'player.rb'

class Sequential_Player < Player
  def initialize(name,oracle,range)
    super(name,oracle,range)
  end

  def guess
    player_guess = 1
    @no_of_guesses += 1
    if @oracle.is_it?(player_guess) == true
      true
    end
  end
end