class CreateChatLines < ActiveRecord::Migration
  def self.up
    create_table :chat_lines do |t|
      t.references :chat_room
      t.references :user
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :chat_lines
  end
end
