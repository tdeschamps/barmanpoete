class Dosage < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
end
