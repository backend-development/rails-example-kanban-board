class Card < ApplicationRecord
  belongs_to :board

  validates  :board_id, presence: true
  validates  :title,    length: { minimum: 3 }
  validates  :status,   inclusion: { in: %w(backlog todo working_on done) }
end
