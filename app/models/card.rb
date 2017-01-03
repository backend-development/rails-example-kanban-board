class Card < ApplicationRecord
  belongs_to :board

  @@valid_status = %w(backlog todo working_on done)

  validates  :board_id, presence: true
  validates  :title,    length: { minimum: 3 }
  validates  :status,   inclusion: { in: @@valid_status }
end
