class AddBestSongToSong < ActiveRecord::Migration
  def change
  	add_column :songs, :chosen_song, :boolean, default: false
  end
end
