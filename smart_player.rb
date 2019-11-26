

class Smart_Player
  def initialize(name,oracle,range)
    @name = name
    @oracle = oracle
    @range = range
    @lower_end = 1
  end

  def guess
    player_guess = (@range + @lower_end)/2
    puts "Range is: #{@lower_end}..#{@range}"
    if @oracle.is_it?(player_guess) == true
      puts "#{@name} guessed #{player_guess} and won!"
      true
    elsif @oracle.is_it?(player_guess) == "secret is higher than guess"
      puts "#{@name} guessed #{player_guess}"
      @lower_end = player_guess
      false
    else
      puts "#{@name} guessed #{player_guess}"
      @range = player_guess
      false
    end
  end
end