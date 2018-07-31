class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true

end


# id cocktail_id ingredient_id description
#  1.    3.          6          "jjkjljjljk"
