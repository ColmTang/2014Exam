

class Oracle
  attr_reader :secret
  def initialize(range)
    @secret = rand(1..range)
  end

  def is_it?(guess)
    if @secret > guess
      "secret is higher than guess"
    elsif @secret < guess
      "secret is lower than guess"
    else
      @secret == guess
    end
  end
end