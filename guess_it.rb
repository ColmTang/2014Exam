require_relative 'oracle.rb'
require_relative 'random_player.rb'
require_relative 'smart_player.rb'

class Guess_It
  def initialize
    @oracle = Oracle.new(100)
    @player_r = Random_Player.new("Ako",@oracle,100)
    @player_s = Smart_Player.new("Jane",@oracle,100)
  end

  def play_game
    finished = false
    puts "secret number is :#{@oracle.secret}"
    until finished
      if @player_r.guess
        finished = true
      end
    end
    finished = false
    until finished
      if @player_s.guess
        finished = true
      end
    end
  end
end