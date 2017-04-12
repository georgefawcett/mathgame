require './question.rb'
require './player.rb'
require './turn.rb'

puts "----- GAME START -----"
@current_player = 0
@gameover = false

while @gameover == false
  turn
end



