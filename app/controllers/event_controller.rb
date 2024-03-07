class EventController < ApplicationController
  def index
    @event = Event.all
    render json: @event
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def create
    @event = Event.new(event_params)
    
    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end

  end

  def update
    @event =Event.find(params[:id])
    if @Event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:Event).permit(:title, :content)
  end
end
