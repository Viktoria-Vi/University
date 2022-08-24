;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |Aufgabe 3|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (add-nat n1 n2)
  (cond
    [(= n2 0) n1]
    [else (add-nat (add1 n1) (sub1 n2))]
    )
  )

(define (mul-nat-h n1 n2 h)
  (cond
    [(= n2 0) h]
    [else (mul-nat-h n1 (sub1 n2) (add-nat h n1))]
    )
  )
  
(define (mul-nat n1 n2)
  (mul-nat-h n1 n2 0)
  )

(define (is-odd?-h n h)
  (cond
    [(= n 0) (= h 1)]
    [(= h 0) (is-odd?-h (sub1 n) (add1 h))]
    [else (is-odd?-h (sub1 n) (sub1 h))]
    )
  )
    
(define (is-odd? n)
  (is-odd?-h n 0)
  )

(define (sum-h l h)
  (cond
    [(empty? l) h]
    [else (sum-h (rest l) (add-nat (first l) h))]
    )
  )

(define (sum l)
  (sum-h l 0)
  )
    