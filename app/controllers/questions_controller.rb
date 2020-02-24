class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_question = params[:user_question]
    @answer = if @user_question == 'I am going to work'
                'Great!'
              elsif @user_question[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work.'
              end
  end
end
