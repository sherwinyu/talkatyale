module ApplicationHelper
	def list_users
		@users = User.all		
		render 'users/index'	
	end

	def list_chat_rooms
		@chat_rooms = ChatRoom.all
		render 'chat_rooms/index'	
	end
	


end
