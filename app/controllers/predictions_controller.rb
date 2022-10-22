class PredictionsController < ApplicationController

  protect_from_forgery with: :null_session


  def index 
    predictions = Prediction.all.order("id DESC")
    render json: {
      data: {prediction: PredictionSerializer.new(predictions).serializable_hash[:data].map{|data| data[:attributes]}}
    }
  end

  def new
    @prediction = Prediction.new
  end

  def create
  end

  private

  def prediction_params
    params[:match_schedule_id] = params[:match_schedule_id].to_i
    params[:user_id] = params[:user_id].to_i
    params[:team_id] = params[:team_id].to_i
    params[:prediction] = params[:prediction].to_i
    params[:stakes] = params[:stakes].to_i
    params.permit(:match_schedule_id, :user_id, :team_id, :prediction, :stakes)
  end


end
