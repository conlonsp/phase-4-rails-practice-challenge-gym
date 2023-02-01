class MembershipsController < ApplicationController

  def create
    mem = Membership.create!(membership_params)
    render json: mem, status: :created
  end

  private

  def membership_params
    params.permit(:client_id, :gym_id, :charge)
  end
end
