class CreateChargeFunDetails < ActiveRecord::Migration
  def self.up
    create_table :charge_fun_details do |t|
    end
  end

  def self.down
    drop_table :charge_fun_details
  end
end
