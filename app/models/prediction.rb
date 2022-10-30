class Prediction < ApplicationRecord
    belongs_to :match_schedule
    belongs_to :team, optional: true
    belongs_to :user

    enum prediction: {
        win:   1,
        draw:  2
    }


    def self.create_prediction(params, match, predictedTeam)
        user_id = params[:user_id].to_i
        params[:stakes] ? stakes = params[:stakes].to_i : 0
        if predictedTeam == "team_a"
            teamID = match.team_a.id
            prediction = 1
        elsif predictedTeam == "team_b"
            teamID = match.team_b.id
            prediction = 1
        elsif predictedTeam == "draw"
            teamID = nil
            prediction = 2 
        end 
        newPrediction = Prediction.new(match_schedule_id: match.id, user_id: user_id, team_id: teamID, prediction: prediction, stakes: stakes)
        if newPrediction.save!
          team_a_prediction_count = match.predictions.where(team_id: match.team_a).count
          team_b_prediction_count = match.predictions.where(team_id: match.team_b).count
          draw_prediction_count = match.predictions.where(prediction: 2).count
          totalPredictions = match.total_predictions
          match.update(total_predictions: totalPredictions + 1, team_a_win_predictions:  team_a_prediction_count, team_b_win_predictions: team_b_prediction_count, draw_predictions: draw_prediction_count)
        end
    end

    def self.update_prediction(params, match, predictedTeam, userPrediction)
        params[:stakes] ? stakes = params[:stakes].to_i : 0
        stakes = params[:stakes].to_i
        if predictedTeam == "team_a"
            teamID = match.a_team
            prediction = 1
        elsif predictedTeam == "team_b"
            teamID = match.b_team
            prediction = 1
        elsif predictedTeam == "draw"
            teamID = nil
            prediction = 2 
        end 
        userPrediction.update(team_id: teamID, prediction: prediction, stakes: stakes )
        team_a_prediction_count = match.predictions.where(team_id: match.a_team).count
        team_b_prediction_count = match.predictions.where(team_id: match.b_team).count
        draw_prediction_count = match.predictions.where(prediction: 2).count
        match.update(team_a_win_predictions:  team_a_prediction_count, team_b_win_predictions: team_b_prediction_count, draw_predictions: draw_prediction_count)
      end 
end
