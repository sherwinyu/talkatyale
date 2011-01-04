class CreateTestObj2s < ActiveRecord::Migration
  def self.up
    create_table :test_obj2s do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :test_obj2s
  end
end
