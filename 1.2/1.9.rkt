#lang scheme
(define (++ a b)
(if (= a 0)
b
(inc (++ (dec a) b))))
;recursive call

(define (inc a) (+ 1 a))
(define (dec a) (- 1 a))

;(define (++ a b)
;(if (= a 0)
;b
;(++ (dec a) (inc b))))
;tail recursion
(+ 2 3)