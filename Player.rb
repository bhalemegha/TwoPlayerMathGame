require 'active_support/all'

class Player 
  def initialize(name, attempt)
    @name = name
    @attempt = attempt
  end

  attr_accessor :name
  attr_accessor :attempt

  def update_attempt
    @attempt = @attempt - 1
  end
end