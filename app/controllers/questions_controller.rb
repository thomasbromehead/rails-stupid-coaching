class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @question_length = @question.length-1
    @last_character = params[:question][@question_length]
    # puts "hello"
    if @question == "I am going to work" 
      @answer = "Great!"
    elsif @last_character == '?'
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
