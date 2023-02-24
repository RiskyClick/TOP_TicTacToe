require './players.rb'
require './game.rb'

p1 = Player.new(1)
p2 = Player.new(2)
game = Game.new(p1, p2).play



