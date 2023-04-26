class DropCategorizationTable < ActiveRecord::Migration[7.0]
  def change
  		drop_table :categorizations
  end
end
