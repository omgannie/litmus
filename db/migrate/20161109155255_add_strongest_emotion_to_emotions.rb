class AddStrongestEmotionToEmotions < ActiveRecord::Migration
  def change
    add_column  :emotions, :strongest_emotion,  :string
  end
end
