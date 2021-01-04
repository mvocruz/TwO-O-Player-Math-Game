require "./game"
require "./player"
require "./questions"

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new()

puts game.round(player1, player2)