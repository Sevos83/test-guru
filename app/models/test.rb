class Test < ApplicationRecord
  has_many :questions
  has_many :user_tests
  has_many :users, through: :user_tests
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  def self.by_category_name(category)
    joins(:category).where(categories: { title: category }).order(id: :desc).pluck('tests.title')
  end
end
