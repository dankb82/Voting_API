class VotesController < ApplicationController
  def create
    v = Voter.find(params[:voter_id])
    if v.token == params[:token]
      vote = Vote.create(voter_id: params[:voter_id], candidate_id: params[:candidate_id])
      render json: vote
    end
  end

  def destroy
  end

  def index
  end
end
