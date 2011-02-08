#lang scheme
( define (p l c)
   (cond ((= 1 l) 1)
         ((= 1 c) 1)
         ((= l c) 1)
         (else (+ (p (- l 1) (- c 1)) (p (- l 1) c)))
         
         )
   )
(p 5 3)