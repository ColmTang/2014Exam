

class Oracle
  attr_reader :secret
  def initialize(range)
    @secret = rand(1..range)
  end

  def is_it?(guess)
    @secret == guess
  end
end