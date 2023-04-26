class AddGenreIdToSongs < ActiveRecord::Migration[7.0]
  def change
  	add_column :songs, :genre_id, :integer
  end
end
