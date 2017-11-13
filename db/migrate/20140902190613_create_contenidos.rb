class CreateContenidos < ActiveRecord::Migration
  def change
    create_table :contenidos do |t|
      t.integer :parent_id
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end
