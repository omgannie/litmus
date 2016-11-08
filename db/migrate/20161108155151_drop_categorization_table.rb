class DropCategorizationTable < ActiveRecord::Migration
  def change
  		drop_table :categorizations
  end
end
