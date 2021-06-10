#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-square-largest a b c)
  (cond ((and (<= a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (<= b c)) (sum-of-squares a c))
        ((and (<= c a) (< c b)) (sum-of-squares a b))))
  

(check-equal? (sum-square-largest 5 2 2) 29)
(check-equal? (sum-square-largest 2 2 5) 29)
(check-equal? (sum-square-largest 2 5 2) 29)
(check-equal? (sum-square-largest 10 4 8) 164)
(check-equal? (sum-square-largest -10 0 8) 64)
