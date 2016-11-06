class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.text :body
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
