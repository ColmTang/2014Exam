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
    until finished[0] && finished[1] && finished[2]
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
    @players.sort! {|player1,player2| player2.no_of_guesses <=> player1.no_of_guesses}
    @players.each {|player| puts "#{player.name} made #{player.no_of_guesses} guesses"}
  end
end