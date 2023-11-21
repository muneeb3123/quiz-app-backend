class Subject < ApplicationRecord
  validates :sub_name, presence: true
  validates :sub_img, presence: true
  has_many :quizzes, dependent: :destroy
end
