#lang scheme
;Exercise 1.3. Define a procedure that takes three numbers as arguments and returns the sum of the
;squares of the two larger numbers.
 (define (square x y ) (+ (* x x) (* y y)))

(define (max-square a b c)
  (cond 
    ((and (< a b) (< a c)) (+ (square c b)))
    ((and (< b a) (< b c)) (+ (square a c)))
    (else (+ (square b c)))
    )
  )
(max-square 1 2 3)