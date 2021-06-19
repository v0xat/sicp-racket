#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (= (improve guess x) guess)) 

(define (3root x)
  (sqrt-iter 1.0 x))

(check-equal? (3root 27) 3.0)
