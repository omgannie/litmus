class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :artist_name
      t.string :song_title
      t.integer :lyric_id

      t.timestamps null: false
    end
  end
end
