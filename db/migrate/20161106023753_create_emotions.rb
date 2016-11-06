class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.string :joy
      t.string :sadness
      t.string :anger
      t.string :disgust
      t.string :fear
      t.integer :emotionable_id
      t.string :emotionable_type

      t.timestamps null: false
    end
  end
end
