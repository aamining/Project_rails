class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :description
      t.float :price
      t.string :image
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
