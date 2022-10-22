class MatchSchedulesController < ApplicationController

  # skip_before_action :verify_authenticity_token, :only => :prediction

  def index
    matches = MatchSchedule.all.order("created_at DESC")
  
    render json: {
        data: {matches: MatchScheduleSerializer.new(matches).serializable_hash[:data].map{|data| data[:attributes]}}
      }
  end

  def show
    match = MatchSchedule.find_by(id: params[:id])
    render json: {
      status: 200,
      data: {match: MatchScheduleSerializer.new(match).serializable_hash[:data][:attributes]}
    }
  end

  def prediction
    # authToken = current_user.jti
    user_id = params[:user_id].to_i
    match = MatchSchedule.find_by(id: params[:id].to_i)
    predictedTeam = params[:prediction]
    if !(Time.now >= match.match_date )   # for token verification <= && authToken == params[:authToken]
      userPrediction = Prediction.find_by(user_id: user_id, match_schedule_id: match.id)
      if !(userPrediction.present?)
        begin
          Prediction.create_prediction(params, match, predictedTeam )
          render json: {
                status: true, 
                message: "Prediction successfully created"
              }
        rescue
             render json: {
              status: false,
              message: "Something Went Wrong!"
            }
        end
      else
        begin
          Prediction.update_prediction(params, match, predictedTeam, userPrediction)
          render json: {
            status: true,
            message: "Prediction updated Successfully"
          }
        rescue
          render josn: {
              status: false,
              message: "Something Went Wrong!"
            }
        end
      end
    else
      render json: {
        status: true,
        message: "Prediction Time is over! Match has been started"
      }
    end
  end


  private


  def prediction_params
    params[:match_schedule_id] = params[:match_schedule_id].to_i
    params[:user_id] = params[:user_id].to_i
    params[:team_id] = params[:team_id].to_i
    params[:prediction] = params[:prediction].to_i
    params[:stakes] = params[:stakes].to_i
    params.permit(:match_schedule_id, :user_id, :team_id, :prediction, :stakes, :authToken)
  end

end
