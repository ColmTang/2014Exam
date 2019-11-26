require_relative 'oracle.rb'
require_relative 'random_player.rb'
require_relative 'smart_player.rb'
require_relative 'sequential_player.rb'

class Guess_It
  def initialize
    @oracle = Oracle.new(100)
    @player_r = Random_Player.new("Ako",@oracle,100)
    @player_s = Smart_Player.new("Jane",@oracle,100)
    @player_seq = Sequential_Player.new("Thien",@oracle,100)
    @players = [@player_r,@player_s,@player_seq]
  end

  def play_game
    finished = [false,false,false]
    indicator = 0
    puts "secret number is :#{@oracle.secret}"
    until finished
      indicator = indicator % 3
      @players.each do |player|
        unless finished[indicator]
          if player.guess
            finished[indicator] = true
          end
        end
        indicator += 1
      end
    end
    puts "#{@player_r.name} made #{@player_r.no_of_guesses}"
    puts "#{@player_s.name} made #{@player_s.no_of_guesses}"
  end
end