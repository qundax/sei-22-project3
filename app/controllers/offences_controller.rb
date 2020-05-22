class OffencesController < ApplicationController

  def index
    @offences = Offence.all
  end

  def new
    @carpark = Carpark.find(params[:id])
  end

  def create
    @carpark = Carpark.find(params[:id])
    puts params[:offence].values[0]
    puts params[:offence].values[1]
    @offence = Offence.new(offence_params)
    if @offence.save
    @offence.update(carpark_id: @carpark.id)
    redirect_to @offence
    else
      @carpark = Carpark.find(params[:id])
      render 'new'
    end
  end

  def show
    @offence = Offence.find(params[:id])
    @vehicleoffencecount = Offence.where(:offendingPlateNumber=>@offence.offendingPlateNumber).count("*")
    puts @vehicleoffencecount

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def offence_params
      params.require(:offence).permit(:offendingPlateNumber, :lot_id, :carpark_id)
    end
end