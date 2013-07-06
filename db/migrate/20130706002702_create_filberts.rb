class CreateFilberts < ActiveRecord::Migration
  def change
    create_table :filberts do |t|
      t.string :name
      t.integer :gezuntas

      t.timestamps
    end
  end
end
