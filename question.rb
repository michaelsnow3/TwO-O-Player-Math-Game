#question class generates questions and validates answers
class Question

  attr_reader :question

  def initialize
    @answer = 0
    @question = ""
  end

  def generate_question
    num1 = rand(20) + 1
    num2 = rand(20) + 1

    @answer = num1 + num2

    @question = "What does #{num1} plus #{num2} equal?"
  end

  def is_correct?(user_answer)
    user_answer.to_i == @answer
  end

end