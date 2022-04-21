class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    @answer = if @question.end_with?('?')
                'Silly question, get dressed and go to work!'

              elsif @question == 'I am going to work right now!'
                'Great!'

              elsif @question.instance_of?(String)
                "I don't care, get dressed and go to work!"

              else
                'exit'
              end
  end
end
