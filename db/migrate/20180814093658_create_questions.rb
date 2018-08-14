class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :Question_ID
      t.string :Problem_Name
      t.string :Max_Points
      t.string :Submissions

      t.timestamps
    end
  end
end
