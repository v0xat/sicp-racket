#lang sicp

(#%require rackunit)

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (f2 n) 
  (define (f-iter a b c count) 
    (cond ((< n 3) n) 
          ((<= count 0) a) 
          (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))) 
  (f-iter 2 1 0 (- n 2)))

(check-equal? (f 2) 2)
(check-equal? (f 5) 25)
(check-equal? (f2 2) 2)
(check-equal? (f2 5) 25)