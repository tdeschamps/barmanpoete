class CreateDosages < ActiveRecord::Migration
  def change
    create_table :dosages do |t|
      t.float :mix
      t.belongs_to :cocktail, index: true
      t.belongs_to :ingredient, index: true

      t.timestamps
    end
  end
end
