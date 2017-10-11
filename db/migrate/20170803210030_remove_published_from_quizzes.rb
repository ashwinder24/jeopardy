class RemovePublishedFromQuizzes < ActiveRecord::Migration[5.1]
  def change
    remove_column :quizzes, :published, :boolean
    add_column :quizzes, :published, :boolean, :default => false
  end
end
