class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :type
      t.string :difficulty
      t.string :question
      t.string :correct_answer
      t.string :incorrect_answer1
      t.string :incorrect_answer2
      t.string :incorrect_answer3
      t.integer :game_id
      t.integer :user_id
    end
  end
end
