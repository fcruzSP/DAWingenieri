class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :nam_recipes
      t.text :ingredients
      t.text :preparation
      t.string :preparation_time
      t.string :photo
      t.string :state
      t.text :description

      t.timestamps
    end
  end
end
