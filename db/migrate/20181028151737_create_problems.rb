class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.integer :problem_id
      t.text :problem_statement
      t.text :flag
      t.text :supp_file
      t.integer :upvote_downvote
      t.integer :max_points
      t.integer :successful_submissions
      t.integer :total_submissions
      t.boolean :dirty_bit

      t.timestamps
    end
  end
end
