class Belt < ApplicationRecord
    validates :name, :description, presence: true

    belongs_to :kata
end
