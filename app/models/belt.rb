class Belt < ApplicationRecord
    validates :name, :description, presence: true
    belongs_to :kata

    def self.find_kata_id(belt)
      belt = find(belt.id)
      belt.kata.id
    end

    def full_name()
      "#{name} - #{description}"
    end

end
