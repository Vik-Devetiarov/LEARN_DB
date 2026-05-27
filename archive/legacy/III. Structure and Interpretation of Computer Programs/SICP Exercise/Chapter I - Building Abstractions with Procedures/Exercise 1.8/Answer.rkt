#lang sicp

(define (square x) (* x x))

(define (abs x)
  (if (>= x 0) x
      (- x)))


(define (cbrt x)
  (define (cbrt-iter guess x)
    (define next-guess (improve guess x))
    (if (good-enough? guess next-guess)
          next-guess
          (cbrt-iter next-guess x)))
    (cbrt-iter 1.0 x))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess next-guess)
  (< (abs (- guess next-guess))
     (* (abs next-guess) 0.001)))

(cbrt 9)
