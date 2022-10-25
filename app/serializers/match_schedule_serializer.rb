class MatchScheduleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :match_date, :status, :total_predictions, :team_A_win_predictions, :team_B_win_predictions, :draw_predictions, :group,  :time_gmt, :time_ist, :time_local, :team_A, :team_B, :venue, :predictions
  attributes :team_A
  attributes :team_B
  attributes :venue

  def team_A
    object.team_A.map{|team| {id: team.id, name: team.name}}
  end

  def team_B
      object.team_B.map{|team| {id: team.id, name: team.name}}
  end

  def venue
    object.venue.map{|v| {name: v.name}}
  end

  # def predictions
  #   object.predictions
  # end
end
