class Test < ApplicationRecord
  def self.by_category_name(category)
      joins('INNER JOIN categories ON tests.category_id = categories.id')
        .where(categories: { title: category }).order(id: :desc).pluck('tests.title')
  end
end
