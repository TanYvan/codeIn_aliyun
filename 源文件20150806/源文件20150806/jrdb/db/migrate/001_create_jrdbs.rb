class CreateJrdbs < ActiveRecord::Migration
  def self.up
    create_table :jrdbs do |t|
    end
  end

  def self.down
    drop_table :jrdbs
  end
end
