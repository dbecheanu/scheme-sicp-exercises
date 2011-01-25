#lang scheme

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))


;(define (sqrt-iter guess x)
 ; (new-if (good-enough? guess x)
  ;        guess
   ;       (sqrt-iter (improve guess x)
    ;                 x)))


;(define (new-if predicate then-clause else-clause)
; (cond (predicate then-clause)
;      (else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))






(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x )(* x x))

(sqrt 9)

; In this case the else case is always evaluated since is parameter to a function hence the sqrt function never returns.