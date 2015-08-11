class CreateTbSelfExtends < ActiveRecord::Migration
  def self.up
    create_table :tb_self_extends do |t|
    end
  end

  def self.down
    drop_table :tb_self_extends
  end
end
