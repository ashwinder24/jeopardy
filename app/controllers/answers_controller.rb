class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def show
    @answer = Answer.find(params[:answer_id])
  end

  def edit
    if !admin?
      flash[:danger] = "Sorry, you're not an admin."
      redirect_to @user
    else
      @answer = Answer.find(params[:answer_id])
    end
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question_id = params[:question_id]
    @quiz = Quiz.find(params[:quiz_id])
    if @answer.save
      redirect_to @quiz
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:option, :correct_answer)
  end
end
