class AddChosenOneToSongs < ActiveRecord::Migration
  def change
    add_column  :songs, :chosen_one, :boolean, default: false
  end
end
