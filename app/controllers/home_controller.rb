class HomeController < ApplicationController
  def index
	  @chat_room = ChatRoom.first
  end

end
