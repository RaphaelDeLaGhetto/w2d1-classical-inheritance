#
# W2D1 classical inheritance exercise
#

#
# Modules
#
module Flight
  attr_accessor :airspeed_velocity

  def fly 
    puts "I'm a #{self.class.to_s.downcase}, I'm flying!"  
  end
end

#
# Classes
#
class Animal
  attr_reader :num_legs

  def initialize(args={})
    @num_legs = args[:num_legs]
    @warm_blooded = args[:warm_blooded]
  end

  def warm_blooded?
    @warm_blooded
  end
end

class Mammal < Animal
end

class Amphibian < Animal
end

class Primate < Mammal
  def initialize(args={})
    super(args)
    @num_legs = 2
    @warm_blooded = true
  end
end

class Frog < Amphibian
end

class Bat < Mammal
  include Flight
end

class Parrot < Mammal
  include Flight
end

class Chimpanzee < Primate
end

