users = User.create([
{ name: 'Александр', email: 'alex111@gmail.com' },
{ name: 'Иван', email: 'ivan222@gmail.com' },
{ name: 'Олег', email: 'oleg333@gmail.com' }
])

categories = Category.create([
{ title: 'Математика' },
{ title: 'Литература' },
{ title: 'Химия' }
])

tests = Test.create([
{ title: 'Числа', category_id: categories[0].id, level: 1 },
{ title: 'Поэты', category_id: categories[1].id, level: 1 },
{ title: 'Элементы', category_id: 1 },
{ title: 'Фигуры', category_id: categories[0].id, level: 2 },
{ title: 'Произведения', category_id: 2 },
{ title: 'Вещества', category_id: 2 },
])

questions = Question.create([
{ question: 'Чему равна четверть часа', test_id: tests[0].id },
{ question: 'Автор «Мне осталась одна забава»', test_id: tests[1].id },
{ question: 'Металл, вызывающий лихорадку', test_id: tests[2].id },
{ question: 'Сумма углов квадрата?', test_id: tests[3].id },
{ question: 'Автор сказки «Курочка–Ряба»', test_id: tests[4].id },
{ question: 'Название вещества состоящего из атомов одного вида', test_id: tests[5].id }
])

answers = Answer.create([
{ answer: '20 минут', question_id: questions[0].id, correct: false },
{ answer: '15 минут', question_id: questions[0].id, correct: true },
{ answer: 'Владимир Маяковский', question_id: questions[1].id, correct: false },
{ answer: 'Сергей Есенин', question_id: questions[1].id, correct: true },
{ answer: 'Серебро', question_id: questions[2].id, correct: false },
{ answer: 'Золото', question_id: questions[2].id, correct: true },
{ answer: '270', question_id: questions[3].id, correct: false },
{ answer: '360', question_id: questions[3].id, correct: true },
{ answer: 'Александр Пушкин', question_id: questions[4].id, correct: false },
{ answer: 'Владимир Даль', question_id: questions[4].id, correct: true },
{ answer: 'Сложные', question_id: questions[5].id, correct: false },
{ answer: 'Простые', question_id: questions[5].id, correct: true }
])

test_passages = TestPassage.create([
{ user_id: users[0].id, test_id: tests[0].id },
{ user_id: users[0].id, test_id: tests[1].id },
{ user_id: users[0].id, test_id: tests[3].id },
{ user_id: users[1].id, test_id: tests[4].id },
{ user_id: users[1].id, test_id: tests[3].id },
{ user_id: users[1].id, test_id: tests[5].id },
{ user_id: users[2].id, test_id: tests[4].id },
{ user_id: users[2].id, test_id: tests[3].id },
{ user_id: users[2].id, test_id: tests[2].id }
])
