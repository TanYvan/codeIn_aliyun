class CreateTaxDetails < ActiveRecord::Migration
  def self.up
    create_table :tax_details do |t|
    end
  end

  def self.down
    drop_table :tax_details
  end
end
