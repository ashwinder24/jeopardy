class AddColumnScoresToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :scores, :integer
  end
end
