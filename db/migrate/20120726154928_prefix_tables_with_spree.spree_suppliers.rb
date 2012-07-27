# This migration comes from spree_suppliers (originally 20120726145529)
class PrefixTablesWithSpree < ActiveRecord::Migration
  def change
    rename_table :suppliers, :spree_suppliers
  end
end
