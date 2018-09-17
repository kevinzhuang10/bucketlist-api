class ListsController < ApplicationController
  before_action :authenticate_user!

  def create
    list_params = whitelisted_params
    result = CreateList.new(name: list_params[:name], user_id: current_user.id).call
    render json: result.payload
  end

  def show
    render json: List.find(whitelisted_params[:id])
  end

  private

  def whitelisted_params
    params.permit(:name, :id)
  end
end
