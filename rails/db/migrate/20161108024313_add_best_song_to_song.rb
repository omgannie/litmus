class AddBestSongToSong < ActiveRecord::Migration[7.0]
  def change
  	add_column :songs, :chosen_song, :boolean, default: false
  end
end
