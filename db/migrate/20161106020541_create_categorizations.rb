class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :song_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
