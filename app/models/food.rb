class Food < ApplicationRecord
  include Statusable

  enum :category, {
    bread_cereal_rice_pasta: 0,
    condiments: 1,
    vegetables: 2,
    confectionery_sugars_sweeteners: 3,
    nuts_seeds: 4,
    fruit: 5,
    drinks: 6,
    dairy: 7,
    fats_oils: 8,
    snacks: 9,
    meat_fish_eggs: 10
  }
end
