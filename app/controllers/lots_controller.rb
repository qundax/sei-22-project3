class LotsController < ApplicationController

  def index
    @carpark = Carpark.find(params[:id])
    puts @carpark.lot.count
  end


  def new
    @carparks = Carpark.all
  end

  def create
    @lot = Lot.new(lot_params)
    puts " i have entered here"
    @carpark = Carpark.find(params[:id])
    @lot.carpark = @carpark
    @lot.save
    @carpark.update(totallots: @carpark.lot.count)
    redirect_to @lot
  end

  def show
      @lot = Lot.find(params[:id])

  end

def edit
  @lot = Lot.find(params[:id])

  puts "in the edit path"
end

def update
@lot = Lot.find(params[:id])
@lot.update(lot_params)
redirect_to @lot
end

  def destroy
      #if Boardfollowee.exists?(user_id: current_user.id, boardfollowee_id: params[:id] )
      #puts "does exist"
      #  @boardfollowee = Boardfollowee.find_by user_id: current_user.id, boardfollowee_id: params[:id]
      @lot = Lot.find(params[:id])
      @lot.destroy
      redirect_to carparks_path
      # @carpark.update(reservedlots: @carpark.reservedlots-1)
      # redirect_to carparks_path
    #else
    #  puts "does not exist"


    #  redirect_to others_path
    #end




  end

private

  def lot_params
    params.require(:lot).permit(:lotNumber)
  end

end