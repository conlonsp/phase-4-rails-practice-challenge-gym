class ClientsController < ApplicationController

  before_action :find_client, only: [:show, :update]

  def index
    render json: Client.all, status: :ok
  end

  def show
    render json: @client, serializer: TotalClientChargeSerializer
  end

  def update
    @client.update(client_params)
    render json: @client
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.permit(:name, :age)
  end
end
