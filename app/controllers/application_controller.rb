class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:show, :index, :loginrole, :signuprole, :signup]


  protected

  def after_sign_in_path_for(resource)
    # return the path based on resource
    if resource.class == User
      vehicles_path
    elsif resource.class == Admin
      homes_path
    elsif resource.class == Summon
      carparks_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
    # return the path based on resource
  end
end