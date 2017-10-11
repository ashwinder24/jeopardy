class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end


  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_attributes)
    @question.quiz_id = params[:quiz_id]
    if @question.save
      redirect_to new_quiz_question_answer_path
    else
      render :new
    end
  end

  def edit
    render text: "Editing Question: #{params[:id]}"
  end

  def update
    @question = Question.find(params[:id])
    @quiz = @question.quiz
    if @question.update(question_attributes)
      redirect_to @quiz
    else
      render :edit
    end
  end

end

  private

  def question_attributes
    params.require(:question).permit(:body)
  end
