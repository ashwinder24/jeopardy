module QuizHelper < SessionsHelper

  def answer_score
    if @correct_answer
      self.score == 10
    else
      self.score == 0
    end
  end

  def quiz_submitted?
  end

  def quiz_score
    quiz = Quiz.find_by(id: session[:user_id])
    quiz_score = 0
    while !quiz_submitted?
      @quiz_score.inject(0) { |total, (question.answer_id, answer_score)| total + answer_score.last }
      if quiz_submitted?
        return total[{quiz_id: :quiz_score}]
        redirect_to user_path
      else
        redirect_to quiz
      end
    end
  end

  def quiz_taken?
    !@current_user.quiz_score.nil
  end

  def total_score
    user = User.find_by(params[:id])
    if quiz_taken?
      @total_score = quiz_scores.map {|q| q[:quiz_id]}.sum
      return total_score
    else
      flash[:danger] = 'You have to play to win!'
    end
  end

end
