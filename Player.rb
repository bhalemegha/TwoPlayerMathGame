require 'active_support/all'

class Player 
  def initialize(name)
    @name = name;
    score = 0;
    attempt = 0
  end

  attr_accessor :name
  attr_accessor :score
  attr_accessor :attempt
end