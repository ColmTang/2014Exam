require_relative 'player.rb'

class Random_Player < Player
  def initialize(name,oracle,range)
    super(name,oracle,range)
  end

  def guess
    player_guess = rand(1..@range)
    @no_of_guesses += 1
    if @oracle.is_it?(player_guess) == true
       puts "#{@name} guessed #{player_guess} and won!"
      true
    else
      puts "#{@name} guessed #{player_guess}"
    end
  end
end