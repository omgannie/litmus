class AddUriColumnToSongs < ActiveRecord::Migration[7.0]
  def change
  	add_column :songs, :uri, :string
  end
end
