require_relative 'player.rb'

class Sequential_Player < Player
  def initialize(name,oracle,range)
    super(name,oracle,range)
    @player_guess = 1
  end

  def guess
    @no_of_guesses += 1
    if @oracle.is_it?(@player_guess) == true
      true
    else
      @player_guess += 1
      false
    end
  end
end