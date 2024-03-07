class Api::V1::InformationsController < ApplicationController
  def index
    @informations = Information.all
    render json: @informations
  end

  def show
    @information = Information.find(params[:id])
    render json: @information
  end

  def create
    @information = Information.new(information_params)

    if @information.save
      render json: @information, status: :created
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      render json: @information
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy
  end

  private

  def information_params
    params.require(:information).permit(:title, :content, :user_id)
  end


end
