class AddEnglishColumnToGenre < ActiveRecord::Migration
  def change
    add_column  :genres, :english, :boolean, default: true
  end
end
