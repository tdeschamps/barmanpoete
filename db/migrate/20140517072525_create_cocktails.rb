class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :photo_url, default: "http://cineclap.free.fr/cocktail-1988/cocktail-1988-a07.jpg?ksp4n8"

      t.timestamps
    end
  end
end
