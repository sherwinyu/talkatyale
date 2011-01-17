class ChatRoom < ActiveRecord::Base
	has_many :users 
	has_many :chat_lines
	def to_s
		name
	end
end
