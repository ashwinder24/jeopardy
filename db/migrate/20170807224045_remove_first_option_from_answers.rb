class RemoveFirstOptionFromAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :answers, :first_option, :string
    remove_column :answers, :second_option, :string
    remove_column :answers, :third_option, :string
    remove_column :answers, :correct_answer, :string

    add_column :answers, :option, :string
    add_column :answers, :correct_answer, :boolean
  end
end
