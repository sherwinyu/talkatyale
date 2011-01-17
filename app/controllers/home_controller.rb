class HomeController < ApplicationController
  def index
  	session[:cur_chat_room_id]=nil
  end
end
