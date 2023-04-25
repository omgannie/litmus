class AddEnglishColumnToGenre < ActiveRecord::Migration[7.0]
  def change
    add_column  :genres, :english, :boolean, default: true
  end
end
