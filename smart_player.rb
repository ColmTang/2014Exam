require_relative 'player.rb'

class Smart_Player < Player
  def initialize(name,oracle,range)
    super(name,oracle,range)
    @lower_end = 1
  end

  def guess
    player_guess = (@range + @lower_end)/2
    @no_of_guesses += 1
    puts "Range is: #{@lower_end}..#{@range}"
    if @oracle.is_it?(player_guess) == true
      puts "#{@name} guessed #{player_guess} and won!"
      true
    elsif (@oracle.is_it?(player_guess) == "secret is higher than guess") && (player_guess == 99)
      puts "#{@name} guessed #{player_guess}"
      @lower_end += 1
      false
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