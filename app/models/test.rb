class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :user_tests
  has_many :users, through: :user_tests
  def self.by_category_name(category)
    joins(:category).where(categories: { title: category }).order(id: :desc).pluck('tests.title')
  end
end
