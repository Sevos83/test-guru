class Answer < ApplicationRecord
  validates :body, presence: true
  validate :validate_numbers_of_answers, on: :create

  belongs_to :question

  scope :correct_answer, -> { where(correct: true) }

  private

  def validate_numbers_of_answers
    message = 'Кол-во ответов может быть не больше 4-х'
    errors.add(:question, message) if question.answers.count >= 4
  end
end
