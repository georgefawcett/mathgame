require './player.rb'

def question(player)

  number = (0..1).map{rand(1..20)}
  correct_answer = number[0] + number[1]

  puts "Player #{player+1}: What does #{number[0]} plus #{number[1]} equal?"
  player_answer = gets.chomp.to_i

  if player_answer == correct_answer
    puts "Player #{player+1}: Correct, it's #{player_answer}!"
  else
    @player_lives[player] -= 1
    puts "Player #{player+1}: Wrong! You are down to #{@player_lives[player]} lives!"
  end


  puts "P1: #{@player_lives[0]}/3 vs P2: #{@player_lives[1]}/3"

  if @player_lives[0] == 0 || @player_lives[1] == 0
    puts "----- GAME OVER -----"
    if @player_lives[0] > 0
      puts "Player 1 wins with a score of #{@player_lives[0]}/3"
      @gameover = true
    else
      puts "Player 1 wins with a score of #{@player_lives[1]}/3"
    end
    puts "Play again? (y/n)"

    if (gets.chomp == "y")
      puts "New game"
    else
      puts "Bye!"
    end


  else
    puts "----- NEW TURN -----"
    @gameover = false
    if @current_player == 0
      @current_player = 1
    else
      @current_player = 0
    end
  end





end