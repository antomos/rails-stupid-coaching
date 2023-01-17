class QuestionsController < ApplicationController
  def home
  end
  def ask
  end
  def answer
    @question= params[:question]
    @answer = ""
    if @question.upcase != "I AM GOING TO WORK"
      if @question != ""
        if @question.include? "?"
          @answer << "Silly question, get dressed and go to work!"
        else
          @answer << "I don't care, get dressed and go to work!"
        end
      else
        @answer << "Are you going to say something?"
      end
    else
      @answer << "Great!"
    end
  end
end
