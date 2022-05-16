class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ["I don't care, get dressed and go to work!", "Silly question, get dressed and go to work!"]
    @answer = ""
    if params[:question] == 'hello'
      @answer = @answers[0]
    elsif params[:question] == 'what time is it?'
      @answer = @answers[1]
    else
      @answer = 'Wrong question'
    end
  end
end
