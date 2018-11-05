class RemoveQuestionsSolvedFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :questions_solved, :integer
  end
end
