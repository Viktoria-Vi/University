;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |Aufgabe 4|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;4A
;Quote Nat -> list-of Nat
(define (evalQuote-h l h)
  (cond
    [(empty? l) h]
    [(number? (first l)) (cons (first l) (evalQuote-h (rest l)  h))]
    [(and (cons? (first l)) (eq?  (first (first l)) '+)) (cons (sum (rest (first l))) (evalQuote-h (rest l) h))]
    [(and (cons? (first l)) (eq?  (first (first l)) '*)) (cons (mul (rest (first l))) (evalQuote-h (rest l) h))]
    [(and (cons? (first l)) (eq?  (first (first l)) '/)) (cons (div (rest (first l))) (evalQuote-h (rest l) h))]
    [(and (cons? (first l)) (eq?  (first (first l)) '-)) (cons (sub (rest (first l))) (evalQuote-h (rest l) h))]
    [else (cons empty h)]
    )
  )

;Quote -> list-of Nat
(define (evalQuote q)
  (evalQuote-h q '())
  )

;list-of Nat -> Nat
(define (sum l)
  (cond [(cons? l) (+ (first l) (sum (rest l)))]
[else 0]))

;list-of Nat -> Nat
(define (mul l)
  (cond [(cons? l) (* (first l) (mul (rest l)))]
[else 0]))

;list-of Nat -> Nat
(define (div l)
  (cond [(cons? l) (/ (first l) (div (rest l)))]
[else 0]))

;list-of Nat -> Nat
(define (sub l)
  (cond [(cons? l) (- (first l) (sub (rest l)))]
[else 0]))

(evalQuote '(1 2 (+ 2 1)))

;4B
;String Number Number Number -> list-of String
(define (farbe->grau name r g b)
   `( ,name ":" ,(Grauwert r g b))
    )

;Number Number Number -> String
(define (Grauwert r g b)
  (number->string (floor (+ (* 0.299 r) (* 0.587 g) (* 0.114 b))))
  )

(length (farbe->grau "Lachsrosa" 250 128 114))
(first (farbe->grau "Lachsrosa" 250 128 114)) 
(second (farbe->grau "Lachsrosa" 250 128 114)) 
(third (farbe->grau "Lachsrosa" 250 128 114)) 
  


