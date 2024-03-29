class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = '#{@event.name} has been removed or canceled'
    redirect_to root_path
  end
  
  def edit
    @event = Event.find(params[:id])
  end
    
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else  
      render 'edit'
    end
  end
  
  private
  def event_params
    params.require(:event).permit(:name, :time, :place)
  end
end