class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user_id = session[:user_id]
    if @quiz.save
      redirect_to new_quiz_question_path(@quiz)
    else
      render :new
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
    @answers = @quiz.answers.shuffle
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz)
    else
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to quizzes_path
  end

  private
   def quiz_params
     params.require(:quiz).permit(:name, :theme, :published)
   end
end
