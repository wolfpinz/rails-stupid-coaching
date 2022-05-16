class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    params[:question]

    @answer = if params[:question] == 'I am going to work'
                'Great!'
              elsif params[:question].include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
