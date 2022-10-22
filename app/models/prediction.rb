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
            teamID = match.team_A.id
            prediction = 1
        elsif predictedTeam == "team_b"
            teamID = match.team_B.id
            prediction = 1
        elsif predictedTeam == "draw"
            teamID = nil
            prediction = 2 
        end 
        newPrediction = Prediction.new(match_schedule_id: match.id, user_id: user_id, team_id: teamID, prediction: prediction, stakes: stakes)
        if newPrediction.save!
          team_A_prediction_count = match.predictions.where(team_id: match.teamA).count
          team_B_prediction_count = match.predictions.where(team_id: match.teamB).count
          draw_prediction_count = match.predictions.where(prediction: 2).count
          totalPredictions = match.total_predictions
          match.update(total_predictions: totalPredictions + 1, team_A_win_predictions:  team_A_prediction_count, team_B_win_predictions: team_B_prediction_count, draw_predictions: draw_prediction_count)
        end
    end

    def self.update_prediction(params, match, predictedTeam, userPrediction)
        params[:stakes] ? stakes = params[:stakes].to_i : 0
        stakes = params[:stakes].to_i
        if predictedTeam == "team_a"
            teamID = match.team_A.id
            prediction = 1
        elsif predictedTeam == "team_b"
            teamID = match.team_B.id
            prediction = 1
        elsif predictedTeam == "draw"
            teamID = nil
            prediction = 2 
        end 
        userPrediction.update(team_id: teamID, prediction: prediction, stakes: stakes )
        team_A_prediction_count = match.predictions.where(team_id: match.teamA).count
        team_B_prediction_count = match.predictions.where(team_id: match.teamB).count
        draw_prediction_count = match.predictions.where(prediction: 2).count
        match.update(team_A_win_predictions:  team_A_prediction_count, team_B_win_predictions: team_B_prediction_count, draw_predictions: draw_prediction_count)
      end 
end
