class CreatePredictions < ActiveRecord::Migration[7.0]
  def change
    create_table :predictions do |t|
      t.integer :match_schedule_id
      t.integer :team_id
      t.integer :user_id
      t.integer :prediction, default: 0
      t.integer :stakes

      t.timestamps
    end
    add_index :predictions, :match_schedule_id
    add_index :predictions, :team_id
  end
end
