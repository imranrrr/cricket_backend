class MatchSchedule < ApplicationRecord
    has_many :predictions
    belongs_to :venue
    belongs_to :team_a, class_name:"Team", foreign_key: :a_team, optional: true
    belongs_to :team_b, class_name:"Team",  foreign_key: :b_team, optional: true

    enum status: {
      "no status yet":  0,
      "Completed":      1,
      "Draw":           2
    }
end
