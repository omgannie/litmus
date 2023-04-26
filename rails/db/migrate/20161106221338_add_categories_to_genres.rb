class AddCategoriesToGenres < ActiveRecord::Migration[7.0]
  def change
    add_column  :genres, :categories, :string, array: true, default: []
  end
end
