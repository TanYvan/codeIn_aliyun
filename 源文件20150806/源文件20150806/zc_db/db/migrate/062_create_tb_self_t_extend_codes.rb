class CreateTbSelfTExtendCodes < ActiveRecord::Migration
  def self.up
    create_table :tb_self_t_extend_codes do |t|
    end
  end

  def self.down
    drop_table :tb_self_t_extend_codes
  end
end
