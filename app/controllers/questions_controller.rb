class QuestionsController < ApplicationController

  def poss_answer(question)
    if question == 'I am going to work'
      @answer = 'Great!'
    elsif question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end

  def answer
    @answer = poss_answer(params[:question])
    return @answer
  end
end
