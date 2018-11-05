class RemoveAddFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :add, :integer
  end
end
