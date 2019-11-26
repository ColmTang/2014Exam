require_relative 'oracle.rb'
require_relative 'random_player.rb'

class Guess_It
  def initialize
    @oracle = Oracle.new(100)
    @player = Random_Player.new("jane",@oracle,100)
  end

  def play_game
    finished = false
    puts "secret number is :#{@oracle.secret}"
    until finished
      if @player.guess
        finished = true
      end
    end
  end
end