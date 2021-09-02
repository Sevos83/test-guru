class Test < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  has_many :questions
  has_many :test_passages
  has_many :users, through: :test_passages

  belongs_to :author, class_name: :User, foreign_key: :author_id, optional: true
  belongs_to :category, optional: true

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :title_categories, ->(category) { joins(:category).where(categories: { title: category }) }

  def self.title_categories_list(category)
    title_categories(category).order(title: :desc).pluck(:title)
  end
end
