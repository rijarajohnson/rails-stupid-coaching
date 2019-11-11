class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # Get the user answer and store the answer
    @user_answer = params[:question]
    # If the message is I am going to work, the coach will answer Great!
    if @user_answer == 'I am going to work'
      @coach_answer = 'Great'
    # If the message has a question mark ? at the end,
    elsif @user_answer.include? '?'
      # the coach will answer Silly question, get dressed and go to work!.
      @coach_answer = 'Silly question, get dressed and go to work!'
      # Otherwise she/he will answer I don't care, get dressed and go to work!
    else @coach_answer = 'I dont care, get dressed and go to work!'
    end
  end
end
