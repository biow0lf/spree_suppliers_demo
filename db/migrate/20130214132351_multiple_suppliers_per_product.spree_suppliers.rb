# This migration comes from spree_suppliers (originally 20120930103304)
class MultipleSuppliersPerProduct < ActiveRecord::Migration
  def self.up
    remove_column :spree_products, :supplier_id
    create_table :products_suppliers do |t|
      t.integer :product_id
      t.integer :supplier_id
    end
    add_index :products_suppliers, :product_id
    add_index :products_suppliers, :supplier_id
  end
  def self.down
    add_column :spree_products, :supplier_id
    drop_table :products_suppliers
  end
end
