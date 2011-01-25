#lang scheme

(define (sqrt-iter guess x pguess)
  (if (good-enough? guess x pguess)
      guess
      (sqrt-iter (improve guess x)
                 x guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (good-enough? guess x pguess)
  (or (< (abs (- (abs guess) (abs pguess))) 0.001)
   (< (abs (- (square guess) x)) 0.001))
  )

(define (sqrt x)0.03125105496164802
  (sqrt-iter 1.0 x 0))

(define (square x )(* x x))

(square (sqrt 111111111111111111))
