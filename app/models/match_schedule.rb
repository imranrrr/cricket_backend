class MatchSchedule < ApplicationRecord
    has_many :predictions
    belongs_to :venue
    belongs_to :team_A, class_name:"Team", foreign_key: :teamA, optional: true
    belongs_to :team_B, class_name:"Team",  foreign_key: :teamB, optional: true

    enum status: {
      "no status yet":  0,
      "Completed":      1,
      "Draw":           2
    }
end
