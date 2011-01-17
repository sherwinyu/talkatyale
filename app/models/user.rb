class User < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name 
	validates_confirmation_of :password, :on => :create
	validates_length_of :password, :within => 5..40
    belongs_to :chat_room 
	def to_s
		name
	end

	#returns a User object if it can authenticate. if not, returns null
	def self.authenticate(user_info)
		find_by_name_and_password(user_info[:name], user_info[:password])
	end

	#sets the session's userid if we logged in.
end
