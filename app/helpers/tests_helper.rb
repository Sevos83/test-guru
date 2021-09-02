module TestsHelper
  def test_header(test)
    if test.new_record?
      'Создать новый вопрос'
    elsif test.persisted?
      "Редактировать вопрос '#{test.title}'"
    end
  end
end
