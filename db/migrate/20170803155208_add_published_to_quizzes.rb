class AddPublishedToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :published, :boolean
  end
end
