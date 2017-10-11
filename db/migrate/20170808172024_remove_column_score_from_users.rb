class RemoveColumnScoreFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :score, :integer
  end
end
