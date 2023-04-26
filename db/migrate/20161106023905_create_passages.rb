class CreatePassages < ActiveRecord::Migration[7.0]
  def change
    create_table :passages do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
