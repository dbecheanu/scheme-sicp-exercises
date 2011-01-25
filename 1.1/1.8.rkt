#lang scheme
(define (cubeR x)
  (define (sqrt-iter guess x pguess)
    (if (good-enough? guess x pguess)
        guess
        (sqrt-iter (improve guess x)
                   x guess)))
  
  (define (improve guess x)
    (/ 
     (+ (/ x (square guess)) 
        (* 2 guess)) 
     3)
    )
  
  
  (define (good-enough? guess x pguess)
    (or (< (abs (- (abs guess) (abs pguess))) 0.001)
        (< (abs (- (square guess) x)) 0.001))
    )
  
  
  
  
  (define (square x )(* x x))
  (sqrt-iter 1.0 x 0)
  )
(cubeR 8)

