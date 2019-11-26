

class Oracle
  def initialize(range)
    @secret = rand(range)
  end

  def is_it?(guess)
    @secret == guess
  end
end