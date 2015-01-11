class Ingredient < ActiveRecord::Base
  has_many :dosages
  has_many :cocktails, through: :dosages

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
