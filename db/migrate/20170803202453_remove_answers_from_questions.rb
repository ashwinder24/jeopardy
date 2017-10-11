class RemoveAnswersFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_reference :questions, :answer, foreign_key: true
    remove_reference :quizzes, :question, foreign_key: true

    add_reference :answers, :question, foreign_key: true
    add_reference :questions, :quiz, foreign_key: true
  end
end
