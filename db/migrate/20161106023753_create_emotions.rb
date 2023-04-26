p = class CreateEmotions < ActiveRecord::Migration[7.0]
  def change
    create_table :emotions do |t|
      t.decimal :joy
      t.decimal :sadness
      t.decimal :anger
      t.decimal :disgust
      t.decimal :fear
      t.integer :emotionable_id
      t.string :emotionable_type

      t.timestamps null: false
    end
  end
end
