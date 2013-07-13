class PagesController < ApplicationController
  def home
  end

  def check_in
  	checkin = Checkin.new
  	checkin.user_hash = session[:session_id]
  	checkin.save!

  	respond_to do |format|
      format.js
    end
  end
end
