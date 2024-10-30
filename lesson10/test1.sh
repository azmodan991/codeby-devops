#! /bin/bash
# Присваивание значений переменным и подстановка значений переменных
a=375
hello=$a
echo hello # Это не ссылка на переменную, выведет строку "hello".
echo $hello
echo ${hello} # Идентично предыдущей строке.
echo "$hello"
echo "${hello}"

# Заключение ссылки на переменную в кавычки сохраняет
# пробельные символы.
hello="A B C D"
echo $hello # A B C D
echo "$hello" # A B C D

# Допускается присваивание нескольких переменных в одной строке,
# если они отделены пробельными символами.
var1=variable1 var2=variable2 var3=variable3
echo "var1=$var1 var2=$var2 var3=$var3"

# Если в значениях переменных встречаются пробелы,
# то использование кавычек обязательно.
numbers="один два три"
other_numbers="1 2 3"
echo "numbers = $numbers"
echo "other_numbers = $other_numbers" # other_numbers = 1 2 3

# Неинициализированная переменная содержит "пустое" значение.
echo "uninitialized_variable = $uninitialized_variable"

# Объявление неинициализированной переменной
uninitialized_variable=
# (то же, что и присваивание пустого значения, см. выше).
echo "uninitialized_variable = $uninitialized_variable"
# Переменная содержит "пустое" значение.
uninitialized_variable=23 # Присваивание.
unset uninitialized_variable # Сброс.
echo "uninitialized_variable = $uninitialized_variable"
# Переменная содержит "пустое" значение.
exit 0

