class AddImageToContenidos < ActiveRecord::Migration
  def change
    add_column :contenidos, :image, :string
  end
end
