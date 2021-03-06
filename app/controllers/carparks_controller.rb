class CarparksController < ApplicationController
  before_action :authenticate_admin!, :except => [:show, :index, :edit, :update, :destroy]

  def index
    @carparks = Carpark.all
    @regions = Region.all
    @regions = @regions.order("regionname")
    @lots = Lot.where.not(vehicle_id: nil)
    puts @lots.inspect
    @lots.each do |lot|
      #calculation in seconds. Will use a conditional to remove user id and vehicle id from lots
      puts lot.lotNumber
      puts lot.updated_at
      puts Time.new.utc
      puts Time.new.utc - lot.updated_at

    end



  end


  def new
    @carpark = Carpark.new
    @regions = Region.all
  end

  def create
    @carpark = Carpark.new(carpark_params)

    if @carpark.save
      redirect_to @carpark
    else
      render 'new'
    end
  end

  def show
      @carpark = Carpark.find(params[:id])

      @remaining = @carpark.totallots - @carpark.reservedlots
  end

def edit
  @carpark = Carpark.find(params[:id])
  @vehicles = Vehicle.all.where(:user_id => current_user)
  @lots = @carpark.lots.where(taken: false)
  @usedlots = @carpark.lots.where(taken: true)
  puts "in the edit path"
end

def update
  puts "in the weird update path"
  @carpark = Carpark.find(params[:id])
  @lot = Lot.find(params[:carpark].values[0].to_i)
  puts params
  puts params[:carpark].values[0]
    puts params[:carpark].values[1]
  puts @carpark.location
  puts @lot.lotNumber
  if @carpark.update(reservedlots: @carpark.reservedlots+1) && @lot.update(vehicle_id: params[:carpark].values[1].to_i) && @lot.update(taken: true)
    redirect_to carparks_path
  else
      @carpark = Carpark.find(params[:id])
  @vehicles = Vehicle.all.where(:user_id => current_user)
  @lots = @carpark.lots.where(taken: false)
  @usedlots = @carpark.lots.where(taken: true)
    render 'edit'
  end

end

  def destroy
      #if Boardfollowee.exists?(user_id: current_user.id, boardfollowee_id: params[:id] )
      #puts "does exist"
      #  @boardfollowee = Boardfollowee.find_by user_id: current_user.id, boardfollowee_id: params[:id]
      puts "Test for method"
      @lot = Lot.find(params[:carpark].values[0].to_i)
      puts @lot.lotNumber
      @carpark = Carpark.find(params[:id])
      @vehicle = @lot.vehicle
      #puts @vehicle.id
      #@newlot = Lot.new(:lotNumber => @lot.lotNumber)
      #@newlot.carpark = @carpark
      #@newlot.vehicle = nil
      #@newlot.save
      #puts @newlot.errors.full_messages
      #puts @newlot.lotNumber
       #     @newlot.carpark = @carpark
       #     @newlot.save
      @lot.update(:vehicle_id => nil)

      @carpark.update(reservedlots: @carpark.reservedlots-1)
      @lot.update(taken: false)


      redirect_to carparks_path
    #else
    #  puts "does not exist"


    #  redirect_to others_path
    #end




  end

private

  def carpark_params
    params.require(:carpark).permit(:location, :totallots, :photo_url, :region_id)
  end

end