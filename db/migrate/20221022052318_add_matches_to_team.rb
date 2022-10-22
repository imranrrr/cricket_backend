class AddMatchesToTeam < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :matches, :integer
    add_column :teams, :points, :integer
    add_column :teams, :ranking, :integer
  end
end
