class CreateFlanges < ActiveRecord::Migration
  def change
    create_table :flanges do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
