;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname A1) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
 ; [X] (list-of X) -> Boolean 1
; Checks whether a list only has pairs, i.e., lists with exactly two entries, as elements.

(define (list-of-pairs? l)
  (match x
    [(pair? l) #t]
    [(pair? (first l)) (list-of-pairs? (rest l))]
    [else #f]
    )
  )

 ;(list-of Number) -> (list-of Posn) 1
; Converts a list with an even amount of numbers
; (x1 y1 x2 y2 ... xn yn) into a list of posn instances
(define (flat->posn l)
   (if (list-of-pairs? l)
       (match x
         [(empty? (rest l)) (cons (posn (first l) (second l)) empty)]
         [else (cons (posn (first l) (second l)) (flat->posn (rest l)))]
         )
       )
   )


