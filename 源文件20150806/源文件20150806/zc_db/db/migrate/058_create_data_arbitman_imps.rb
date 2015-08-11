class CreateDataArbitmanImps < ActiveRecord::Migration
  def self.up
    create_table :data_arbitman_imps do |t|
    end
  end

  def self.down
    drop_table :data_arbitman_imps
  end
end
