class AddCategoriesToGenres < ActiveRecord::Migration
  def change
    add_column  :genres, :categories, :string, array: true, default: []
  end
end
