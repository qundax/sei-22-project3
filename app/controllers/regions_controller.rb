class RegionsController < ApplicationController

  def index

    @regions = Region.all



  end


  def new

  end

  def create

  end

  def show
     @region = Region.find(params[:id])
  end

def edit

end

def update


end

  def destroy





  end



end