require "./questions.rb"
require "./player.rb"

class Game

  attr_accessor :turn

  def initialize()
    @turn = rand(1..2)
  end

  def verifyAnswer(player, question)
    playerAnswer = gets.chomp
    questionAnswer = question.answer

    if playerAnswer.to_i == questionAnswer
      puts "YES! you are correct!"
    elsif playerAnswer.to_i != questionAnswer
      puts "Seriously? No!"
      player.incorrect()
    end
  end

  def verifyWinner(player1, player2)
    if player1.lives <= 0
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts "-----GAME OVER-----"
      puts "Good Bye!"
      exit(true)
    end
    if player2.lives <= 0
      puts "Player 1 wins with a score of #{player1.lives}/3"
      puts "-----GAME OVER-----"
      puts "Good Bye!"
      exit(true)
    end
    
  end

  def round(player1, player2)
    puts "-----New Turn-----"
    question = Questions.new()
    if @turn == 1
      puts "#{player1}: #{question.question()}"
      verifyAnswer(player1, question)
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      @turn = 2
      verifyWinner(player1,player2)
    elsif @turn == 2
      puts "#{player2}: #{question.question()}"
      verifyAnswer(player2, question)
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      @turn = 1
      verifyWinner(player1,player2)
    end 
    round(player1, player2)
  end

end