class AddQuestionsAddedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :questions_added, :integer
  end
end
