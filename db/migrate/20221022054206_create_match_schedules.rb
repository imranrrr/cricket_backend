class CreateMatchSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :match_schedules do |t|
      t.datetime :match_date
      t.string :group
      t.integer :a_team
      t.integer :b_team
      t.integer :venue_id
      t.string :time_gmt
      t.string :time_ist
      t.string :time_local
      t.integer :total_predictions, default: 0
      t.integer :team_a_win_predictions
      t.integer :team_b_win_predictions
      t.integer :draw_predictions
      t.integer :status, default: 0

      t.timestamps
    end
    add_index :match_schedules, :venue_id
  end
end
