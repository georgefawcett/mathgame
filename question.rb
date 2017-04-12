def question

  number_1 = Random.new.rand(1..20)
  number_2 = Random.new.rand(1..20)
  correct_answer = number_1 * number_2

  puts "#{number_1} times #{number_2} equals #{correct_answer}"
  puts "Player 1: What does #{number_1} times #{number_2} equal?"

  player_answer = gets.chomp.to_i

  if player_answer == correct_answer
    return "Yes, it's #{player_answer}!"
  else
    return "Wrong!"
  end

end