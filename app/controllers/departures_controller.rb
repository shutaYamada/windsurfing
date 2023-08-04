class DeparturesController < ApplicationController
  def index
        @start_date = Date.current
        @end_date = @start_date + 1.day
        @departures = Departure.where(date: @start_date..@end_date).group_by(&:date)
        
        #今週の 未出艇者を出す
        this_week = Time.current.all_week
        this_week_depper = User.joins(:departure).where(departure: { date: this_week })
        @non_depper = User.where.not(id: this_week_depper.pluck(:id))
        
  end
  
  
  def new
    @departure = Departure.new(date: params[:date])
  end
  
  def create
    @departure = Departure.new(departure_params)
    @departure.user_id = current_user.id
    @departure.save
    redirect_to departures_path
  end

  
  
  def edit
    @departure = Departure.find(params[:id])
  end
  
  def update
    @departure = Departure.find(params[:id])
    @departure.update(departure_params)
    redirect_to departures_path
   
  end
  
  def destroy 
    departure = Departure.find(params[:id])
    departure.destroy
    redirect_to departures_path
  end
  
  private
  
  def departure_params
    params.require(:departure).permit(:user_id, :start_time, :end_time, :date, :comment)
  end
end
