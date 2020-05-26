class HomesController < ApplicationController
  def index
    @carparks = Carpark.all
  end

  def landing
  end

  def about
  end

  def loginrole
  end

  def signuprole
  end
end