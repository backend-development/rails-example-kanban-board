class Board < ActiveRecord::Base
  attr_accessible :title
  has_many :cards, :dependent => :destroy

  validates_length_of :title, :minimum => 3
end
