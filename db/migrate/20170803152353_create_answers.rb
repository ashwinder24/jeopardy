class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :first_option
      t.string :second_option
      t.string :third_option
      t.string :correct_answer

      t.timestamps
    end
  end
end
