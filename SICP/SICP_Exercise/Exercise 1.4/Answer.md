(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

1. Объявляем процедуру (a-plus-abs-b) с параметрами a и b;
2. Если b больше 0, то +, если меньше или равно 0, то -;
3. Применяем выбранную функцию - либо (+ a b), если b больше 0, либо (- a b), если b меньше или равно 0;
4. Это эквивалентно a + |b|.
