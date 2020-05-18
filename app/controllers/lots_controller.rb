class LotsController < ApplicationController

  def index

  end


  def new
    @carparks = Carpark.all
  end

  def create
    @lot = Lot.new(lot_params)

    @lot.save
    redirect_to @lot
  end

  def show
      @lot = Lot.find(params[:id])

  end

def edit

end

def update


end

  def destroy
      #if Boardfollowee.exists?(user_id: current_user.id, boardfollowee_id: params[:id] )
      #puts "does exist"
      #  @boardfollowee = Boardfollowee.find_by user_id: current_user.id, boardfollowee_id: params[:id]
      # @carpark = Carpark.find(params[:id])
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