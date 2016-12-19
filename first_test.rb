timestamp1= gets.to_i 
timestamp2= gets.to_i  


diff = timestamp1 - timestamp2 # разницу мы записываем в переменную diff 
diff /= 1000 #выделяем секудны из милисекундного timestamp 
time = diff.round # округляем до секунд, убирая дробную часть 
seconds = time % 60 # остаток от деления записываем в переменную seconds 
time /= 60 # делим на 60 и переводим в минуты. 
minutes = time % 60 # остаток от деления записываем в переменную minutes 
time /= 60 # делим на 60 и переводим в часы
hours = time % 24 # остаток от деления записываем в переменную hourtime /= 24
time /= 24 # делим на 60 и переводим в дни. 
days = time # Дни (последний остаток).

if days == 1 || days == -1 # в данном блоке через цикл анализируем количество дней , чтобы поставить правильное окончание
  print "#{days} day " # если у нас 1 день , мы пишем day 
else # иначе 
  print "#{days} days " # если у нас дней >1 пишем дни в множественном числе 
end 

if hours == 1 || hours == -1 # в данном блоке через цикл анализируем количество часов , чтобы поставить правильное окончание 
  print "#{hours} hour " 
else 
  print "#{hours} hours " 
end 

if minutes == 1 || minutes == -1 # в данном блоке через цикл анализируем количество минут , чтобы поставить правильное окончание 
  print "#{minutes} minutes " 
else 
  print "#{minutes} minutes " 
end 

if seconds >= 1  
 if seconds == 1 || seconds == -1 
  print "and #{second} seconds." 
else 
  print "and #{seconds} seconds." 
end 
end
