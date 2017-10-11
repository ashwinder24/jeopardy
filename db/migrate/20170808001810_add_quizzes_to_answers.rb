class AddQuizzesToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :answers, :quiz, foreign_key: true
  end
end
