class MatchesController < ApplicationController

  def index
    render json: Match.all
  end

  def show
    render json: Match.find(params[:id])
  end

  def avg
    @win_avg = @match.challengerOutcome.average
  end

  def create
    render json: Match.create(req_params).to_json
    # render json: Match.new(req_params).to_json
    #
    # Match.save
  end

  private

  def req_params
    params.require(:match).permit(:challenger, :challengee, :challengerOutcome, :status)
  end
end
