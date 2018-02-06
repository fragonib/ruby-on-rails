class Kata < ApplicationRecord
  self.table_name = 'katas'
  validates :title, :description, presence: true

  has_many :belts
end
