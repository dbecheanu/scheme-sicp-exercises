#lang scheme
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n)) ; 2n
(define (g n) (A 1 n)) ; (a 0 (a 1 (- n 1))) =  (* 2 (a 1 (- n 1)))= 2 at n
(define (h n) (A 2 n)) ; (a 1 (a 2 (- n 1))) = 2 at n squre



(h 3)
(A 1 10)

(A 2 4)
(A 3 3)
