require 'time'

MIN = 60 # число секунд в минуте
HOUR = 60 * 60 # число секунд в часе
DAY = 60 * 60 * 24 # число секунд в дне


def generate_time_range(time_str)
  time = Time.parse(time_str)# Инициализируем переменную  
  end_time = time + (5 * DAY) # Запишем в переменную конечную дату (через 5 дней от заданной)
  result = []# Объявим массив в котором будем хранить последовательность дат
    
   
  # (HOUR / (15 * MIN)) это то сколько вместится в 1 час 15 минутных интервалов, т.е. 4.
  # В следующих выражениях аналогично.

  (HOUR / (15 * MIN)).times { result << (time += 15 * MIN) }  # Запишем в `result` даты за первый час с интервалом в 15 минут.

  ((HOUR * 4) / (30 * MIN)).times { result << (time += 30 * MIN) }# Запишем в `result` даты за следующие 4 (5 - 1) часа с интервалом в 30 минут
  ((HOUR * 7) / HOUR).times { result << (time += HOUR) }  # Запишем в `result` даты за следующие 7 (12 - 5) часoв с интервалом в 1 час
  ((4 * DAY + 12 * HOUR) / DAY).times { result << (time += DAY) } # Запишем в `result` даты за следующие 4 дня и 12 часов с интервалом в 1 день
  result# Вернем результат из функции
end


p generate_time_range(ARGV.first).map { |e| e.strftime('%a, %d %b %Y %T') }# Выведем результат работы функции, для самопроверки в формате из примера
