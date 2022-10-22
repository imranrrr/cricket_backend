class PredictionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :prediction, :team, :match_schedule, :user
    belongs_to :team
    belongs_to :match_schedule
    belongs_to :user

    def team
        object.team.map{|t| {id: t.id, name: t.name}}
    end

    def match_schedule
        object.match_schedule.map{|m| {id: m.id, match_date: m.match_date, team_A: m.team_A, team_B: m.team_B }}
    end

    def user
        object.user.map{|u| {id: u.id, email: u.email }}
    end
end
