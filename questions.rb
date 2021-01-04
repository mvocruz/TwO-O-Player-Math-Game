class Questions

  attr_accessor :question, :randomNum1, :randomNum2, :answer

  def initialize()
    @randomNum1 = rand(20)
    @randomNum2 = rand(20)
    @answer = randomNum1 + randomNum2
  end

  def question
    "What does #{randomNum1} plus #{randomNum2} equal?"
  end

end