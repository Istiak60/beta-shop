class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :short_description
      t.integer :price

      t.timestamps
    end
  end
end
