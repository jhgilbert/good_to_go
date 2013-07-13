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

  def status
  end

  def checkin_counter
  	count = Checkin.all.length
  	
  	render :json => count
  end

  def reset_checkins
  	checkins = Checkin.all
  	checkins.each do |c|
  	  c.delete
  	end

  	respond_to do |format|
  	  format.js
  	end
  end
end
