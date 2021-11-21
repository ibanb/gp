# encoding: utf-8
#
# Тест на уровень коммуникабельности. Версия вторая, объектно-ориентированная. С
# классами Test и ResultPrinter.
#
# На основе психологического теста на сайте Синтона
#
# http://www.syntone-spb.ru/library/article_syntone/content/4969.html

# Подключаем классы Test из test.rb и ResultPrinter из result_printer.rb
require_relative "lib/test"
require_relative "lib/result_printer"

puts "Ваш уровень общительности. Тест поможет определить ваш уровень " \
  "коммуникабельности. Версия 0.2. (c) goodprogrammer.ru\n\n"

# Создаем объекты, обратите внимание, что конструкторам не нужно никаких
# параметров, т.к. всю информацию мы «захардкодили» в классы. Иногда это удобно.
test = Test.new
result_printer = ResultPrinter.new

# Основной цикл программы. Конструкция until работает также, как и while, только
# пока условие НЕ выполнено.
until test.finished?
  # Пока тест не закончился, задаем пользователю следующий вопрос методом
  # next_question нашего экземпляра класса Test.
  test.next_question
end

# Вводим результаты теста методом print_result у объекта класса ResultPrinter
result_printer.print_result(test)
