class RemoveQuestionsAddedFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :questions_added, :integer
  end
end
