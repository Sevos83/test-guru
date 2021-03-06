class UserTest < ApplicationRecord
  PASS_TEST_PERCENT = 85

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_current_question, on: %i[create update]

  def success?
    percentage_of_correct_answers >= PASS_TEST_PERCENT
  end

  def percentage_of_correct_answers
    (correct_questions.to_f / test.questions.count.to_f) * 100
  end

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_questions += 1
    end

    save!
  end

  def current_question_number
    test.questions.index(current_question) + 1
  end

  private

  def before_validation_set_current_question
    self.current_question =
      if current_question.nil?
        test.questions.first
      else
        test.questions.order(:id).where('id > ?', current_question.id).first
      end
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end
end
