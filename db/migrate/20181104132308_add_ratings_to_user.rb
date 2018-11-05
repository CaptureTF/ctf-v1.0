class AddRatingsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ratings, :integer
  end
end
