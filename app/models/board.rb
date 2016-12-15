class Board < ApplicationRecord
  has_many :cards, dependent: :destroy

  # validates :title, length: { minimum: 3 }
end
