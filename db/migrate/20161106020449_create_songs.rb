class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist_name
      t.string :song_title
      t.integer :lyric_id

      t.timestamps null: false
    end
  end
end
