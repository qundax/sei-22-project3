class CarparksController < ApplicationController

  def index
    @carparks = Carpark.all
  end


  def new
  end

  def create
    @carpark = Carpark.new(carpark_params)

    @carpark.save
    redirect_to @carpark
  end

  def show
      @carpark = Carpark.find(params[:id])
      @remaining = @carpark.totallots - @carpark.reservedlots
  end

def edit
  @carpark = Carpark.find(params[:id])
  @lots = @carpark.lot.where(taken: false)
  @usedlots = @carpark.lot.where(taken: true)
  puts "in the edit path"
end

def update
  puts "in the weird update path"
  @carpark = Carpark.find(params[:id])
  @lot = Lot.find(params[:carpark].values[0].to_i)

  puts params[:carpark].values[0]
  puts @carpark.location
  puts @lot.lotNumber
  @carpark.update(reservedlots: @carpark.reservedlots+1)
  @lot.update(taken: true)
  redirect_to carparks_path

end

  def destroy
      #if Boardfollowee.exists?(user_id: current_user.id, boardfollowee_id: params[:id] )
      #puts "does exist"
      #  @boardfollowee = Boardfollowee.find_by user_id: current_user.id, boardfollowee_id: params[:id]
      puts "Test for method"
      @lot = Lot.find(params[:carpark].values[0].to_i)
      puts @lot.lotNumber
      @carpark = Carpark.find(params[:id])
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
    params.require(:carpark).permit(:location, :totallots, :photourl)
  end

end