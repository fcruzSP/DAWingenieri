class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
