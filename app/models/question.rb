class Question < ApplicationRecord
  validates :question, presence: true

  has_many :answers
  belongs_to :test
end
