module TestsHelper
  def test_header(test)
    if test.new_record?
      'Создать новый вопрос'
    elsif test.persisted?
      "Редактировать вопрос '#{test.title}'"
    end
  end

  def test_category(test)
    if test.category.nil?
      'Категория не присвоена'
    else
      test.category.name
    end
  end
end
