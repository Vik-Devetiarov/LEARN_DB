#lang sicp

(define (sqr x) (* x x))

(define (sum-sqr x y)
  (+ (sqr x) (sqr y)))

(define (sum-sqr-of-largest x y z)
  (cond
    ((and (<= x y) (<= x z))
     (sum-sqr y z))
    ((and (<= y x) (<= y z))
     (sum-sqr x z))
    (else
     (sum-sqr x y))))
