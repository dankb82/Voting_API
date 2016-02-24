class VotersController < ApplicationController
  def create
    v = Voter.create(name: params["name"], party: params["party"], token: params["token"])
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
  end
end
