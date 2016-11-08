class UpdateColumnName < ActiveRecord::Migration
  def change
    rename_column :genres, :english, :has_lyrics
  end
end
