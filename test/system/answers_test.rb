require 'application_system_test_case'

class AnswersTest < ApplicationSystemTestCase
  setup do
    @answer = answers(:one)
  end

  test 'visiting the index' do
    visit answers_url
    assert_selector 'h1', text: 'Ответы'
  end

  test 'creating a Answer' do
    visit answers_url
    click_on 'Новый ответ'

    click_on 'Создать ответ'

    assert_text 'Ответ был успешно создан'
    click_on 'Назад'
  end

  test 'updating a Answer' do
    visit answers_url
    click_on 'Изменить', match: :first

    click_on 'Update Answer'

    assert_text 'Ответ был успешно изменён'
    click_on 'Назад'
  end

  test 'destroying a Answer' do
    visit answers_url
    page.accept_confirm do
      click_on 'Удалить', match: :first
    end

    assert_text 'Ответ был успешно удалён'
  end
end
