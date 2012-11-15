class Card < ActiveRecord::Base
  attr_accessible :board_id, :description, :status, :title
  belongs_to :board

  validates_presence_of  :board_id
  validates_length_of    :title, :minimum => 3
  validates_inclusion_of :status, :in => %w(backlog todo working_on done)
end
