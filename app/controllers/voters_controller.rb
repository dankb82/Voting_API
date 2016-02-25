class VotersController < ApplicationController
  def create
    render json: Voter.create(name: params[:name], party: params[:party])
  end

  def show
    v = Voter.find(params[:id])
    if v.token == params[:token]
      render json: v
    else
      render json: "You don't have access to this record"
    end
  end

  def update
    v = Voter.find(params[:id])
    if v.token == params[:token]
       v.name = params[:name] if :name
       v.party = params[:party] if :party
    else
      render  json: "You may not update this record"
    end
    render json: v
  end
end
