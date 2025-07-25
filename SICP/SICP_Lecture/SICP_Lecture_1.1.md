# SICP_LECTURE 1.1

## Введение

Механизмы комбинации простых понятий в сложные:

  1. Элементарные выражения;
  2. Средства комбинирования;
  3. Средства абстракции.

Два типа объектов:

  1. Данные;
  2. Процедуры.

## 1.1.1 Выражения

Выражения (expression) > интерпретатор > вычисления (evaluation).

Простейшее выражение - число.

(+ 5 5) - комбинация (combination):

- "+" - оператор (operator);
- "5" и "5" - операнд (operand).

Значение операнда - аргумент (argument)

Префиксная нотация (prefix notation) - соглашение по которому оператор ставится слева от операндов.

Преимущества префиксной нотации:

  1. Распространяется на произвольное количество аргументов;
  2. Естественным образом расширяется, позволяя комбинациям вкладываться (nest) друг в друга.

Красивая печать (pretty printing) - правила форматирования.
Цикл чтение-вычисление-печать (read-eval-print loop)

## 1.1.2 Имена и окружение

Переменная (variable) - значением (value) является объект.

Имена даются применяя define:

`(define size 2)` - связали значение 2 с именем "size".

После этого можем указывать на значение 2 с помощью имени:

```Scheme
size

2
````

```Scheme
(* 5 size)

10
```

Слово define - простейшее средство асбтракции, поскольку позволяет нам использовать простые имена для обозначения результатов сложных операций.

```Scheme
(define pi 3.14159)
```

```Scheme
(define radius 10)

(* pi (* radius radius))

314.159
```

```Scheme
(define circumference (* 2 pi radius))

circumference

62.8318
```

Интерпритатор имеет память имя-объект. Эта память называется окружением (environment), а точнее глобальным окружением (global environment).

## 1.1.3 Вычисление комбинаций

Чтобы вычислить комбинацию, требуется:

  1. Вычислить все подвыражения;
  2. Применить процедуру, которая является значением самого левого подвыражения (оператора) к аргументам - значениям остальных подвыражений (операндов).

Правило вычисления рекурсивно (recursive). Это означает, что в качестве одного из шагов оно включает применение того же самого правила.

Накопление по древу (tree accumulation) - правило вычисления "распространить значение наверх".

Специальные формы (special forms) - например define.

## 1.1.4 Составные процедуры

Определение процедуры (procedure definition) - метод абстракции, с помощью которого составной оперпции можно дать имя и затем ссылаться на нее как на единое целое.

Возведение в квадрат:
`(define (square x) (* x x))`

Составная процедура (compound procedure):
`(define ('имя' 'формальные параметры') 'тело')`

"Имя" - символ, с которым нужно связать определение процедуры.

"Формальные параметры" - имена в теле процедуры, использующиеся для отсылки к соответствующим аргументам процедуры.

"Тело" - выражение, которое вычисляет результат применения процедуры.

```
(square 21)
441

(square (+ 2 5))
49

(square (square 3))
81
```

x² + y²
```
(+ (square x) (square y))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)
136
```

## 1.1.5 Подстановочная модель применения процедуры

Чтобы применить составную процедуру к аргументам, требуется вычислить тело процедуры, заменив каждый формальный параметр соответствующими аргументами. Это подстановочная модель (substitution model).

Два вида вычислений:

1. Нормальный порядок вычислений (normal-order evaluation);
2. Аппликативный порядок вычислений (applicative-order evaluation).

## 1.1.6 Условные выражения и предикаты

Разбор случаев (case analysis).

cond - от conditional (условный).

|x| = x, если x > 0;
      0, если x = 0;
      -x, если x < 0.

```
(define (abs)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))
```

Общая форма условного выражения:

```
(cond (<p1> <e1>)
      (<p2> <e2>)
      .
      .
      (<pn> <en>))
```

Пары `(<pn> <en>)` - ветви (clauses);
`<pn>` - предикат (predicate) - выражение, значение которого интерпретируется как истина или ложь.

```
(define (abs x)
    (cond ((< x 0) (- x))
          (else x)))
```

```
(define (abs x)
    (if (< x 0)
        (- x)
        x))
```

`else` - специальный символ, который в заключительной ветви `cond` можно использовать на месте `<p>`;

`if` - особая форма - можно использовать когда есть рвоно два возхможных исхода:

`if <p> <e> <альтернатива>`

Составные предикаты:

1. `(and <e1> . . . <en>)` - вычисляет слева направо. Если какое-нибудь из `<e>` дает ложное значение? значит все оно - ложь (#f), и остальные `<e>` не вычисляются. Если все `<e>` истина (#t), значением `and` будет значене последнего из них;
2. `(or <e1> . . . <en>)` - вычисляет слева направо. Если какое-либо `<e>` истина (#t), то возвращает его результат, а остальные не вычисляются. Если все `<e>` ложь (#f), то значение ложь (#f);
3. `(not <e>)` - not истина (#t), если `<e>` ложь (#f) и наоборот.

5 < x < 10:
```
(and (> 5 x) (< x 10))
```
```
(define (>= x y)
    (or (> x y) (= x y)))
```
```
(define (>= x y)
    (not (< x y)))
```

##1.1.7 Вычисление квадратного корня методом Ньютонаэ

Определение функции "квадратный корень":

Корень из x = такое y, что y >= 0 и y * y = x
```
(define (sqrt x)
  (the y (and (>= y 0)
              (= (square y) x))))

Такое не сработает.
```

В математике декларативные (что такое) описания, в информатике императивные (как).

```
(define (square x) (* x x))

(define (abs x)
  (if (>= x 0) x
      (- x)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2)
```
