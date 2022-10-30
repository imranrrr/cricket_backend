class MatchScheduleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :match_date, :status, :total_predictions, :team_a_win_predictions, :team_a_win_predictions, :draw_predictions, :group,  :time_gmt, :time_ist, :time_local, :team_a, :team_b, :venue, :predictions

  def team_a
    object.team_a.map{|team| {id: team.id, name: team.name}}
  end

  def team_b
      object.team_b.map{|team| {id: team.id, name: team.name}}
  end

  def venue
    object.venue.map{|v| {name: v.name}}
  end

  # def predictions
  #   object.predictions
  # end
end
