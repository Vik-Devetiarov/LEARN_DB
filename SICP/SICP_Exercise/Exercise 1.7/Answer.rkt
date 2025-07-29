#lang sicp

(define (square x) (* x x))

(define (abs x)
  (if (>= x 0) x
      (- x)))

(define (sqrt x)
  (define (sqrt-iter first-guess x)
    (define next-guess (improve first-guess x))
    (if (good-enough? first-guess next-guess)
        next-guess
        (sqrt-iter next-guess x)))

  (sqrt-iter 1.0 x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? first-guess next-guess)
  (< (abs (- first-guess next-guess))
     (* (abs next-guess) 0.001)))

(sqrt 10000000)
