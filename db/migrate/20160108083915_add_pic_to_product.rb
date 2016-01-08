class AddPicToProduct < ActiveRecord::Migration
  def change
    add_column :products, :pic, :text
  end
end
