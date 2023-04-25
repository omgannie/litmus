class UpdateColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :genres, :english, :has_lyrics
  end
end
