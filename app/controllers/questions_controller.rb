class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions_asked = params[:question]
    if @questions_asked[-1, 1] == '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @questions_asked == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
