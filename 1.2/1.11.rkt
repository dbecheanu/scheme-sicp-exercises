#lang scheme
(define (f n)
  (if (< n 3) 
      n
      (+ (+ (f (- n 1)) (* 2 (f (- n 2))
                           )) (* 3 (f (- n 3))))
      )
  )
( f 30)

(define (fi cur p1 p2 p3 n)
  (if (= cur n) 
      (+ p1 (* 2 p2) (* 3 p3))
      (fi (+ 1 cur) (+ p1 (* 2 p2) (* 3 p3)) p1 p2 n)
      
   )
  )

( fi 3 2 1 0 30)