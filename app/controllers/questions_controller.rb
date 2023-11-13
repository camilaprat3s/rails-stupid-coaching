
class QuestionsController < ApplicationController
  def ask
    # This action handles the /ask route
    # You can add logic here if needed
  end

  def answer
    # This action handles the /answer route
    # You can add logic here to process the user's question and generate an answer
    @question = params[:question]
    @answer = generate_answer(@question)
  end

  private

  def generate_answer(question)
    # Example logic for generating an answer based on the user's question
    case question
    when 'I am going to work'
      'Great!'
    when /\?$/
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
