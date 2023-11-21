class Option < ApplicationRecord
  validates :value1, presence: true
  validates :value2, presence: true
  validates :value3, presence: true
  validates :value4, presence: true
  belongs_to :quiz
end
