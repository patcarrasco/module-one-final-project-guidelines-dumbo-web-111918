class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.float :high_score_10
      t.float :high_score_20
      t.float :high_score_30
    end
  end
end
