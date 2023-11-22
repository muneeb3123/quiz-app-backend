class Quiz < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true
  belongs_to :subject
  has_one :option, dependent: :destroy
end
