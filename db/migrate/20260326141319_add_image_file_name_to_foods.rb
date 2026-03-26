class AddImageFileNameToFoods < ActiveRecord::Migration[8.1]
  def change
    add_column :foods, :image_file_name, :string, default: nil
  end
end
