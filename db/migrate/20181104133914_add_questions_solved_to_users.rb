class AddQuestionsSolvedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :questions_solved, :integer
  end
end
