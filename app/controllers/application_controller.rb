class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :debug

  def get_current_user
  	#User.new
	User.find(session[:cur_user_id]) unless session[:cur_user_id].nil?
	
  end
  #def get_current_chat_room
	#ChatRoom.find(session[:cur_chat_room_id]) unless session[:cur_chat_room_id].nil?
  #end


  def debug
  	puts "session is:" + session.inspect
	puts "params are:" + params.inspect
  end 

end
