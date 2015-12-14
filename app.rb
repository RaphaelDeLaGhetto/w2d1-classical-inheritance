require './lib/animals'

#
# Try it out
#
chimp = Chimpanzee.new
puts "A chimpanzee has #{chimp.num_legs} legs and is #{chimp.warm_blooded? ? 'warm':'cold'} blooded"

parrot = Parrot.new
parrot.fly

bat = Bat.new
bat.fly
