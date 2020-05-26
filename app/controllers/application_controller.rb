class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    if user_signed_in?
      user_path
    elsif admin_signed_in?
      admin_path
    elsif summon_signed_in?
      summon_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end