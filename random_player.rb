

class Random_Player
  def initialize(name,oracle,range)
    @name = name
    @oracle = oracle
    @range = range
  end

  def guess
    player_guess = rand(1..@range)
    if @oracle.is_it?(player_guess) == true
       puts "#{@name} guessed #{player_guess} and won!"
      true
    else
      puts "#{@name} guessed #{player_guess}"
    end
  end
end