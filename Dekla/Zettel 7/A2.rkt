;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; A Masche is either:
; - a Anfangsschlinge
; - a Luftmasche
; - a Stäbchen
; - false

(define-struct Anfangsschlinge ())
; a Anfangsschlinge is (make-Anfangsschlinge)
; interp.  always the first "Masche" of a "Häkelreihe"


(define-struct Luftmasche (predecessor))
; a Luftmasche is (make-Luftmasche struct)
; interp. one of two possible "Maschen" after a Anfangsschlinge

(define-struct Stäbchen (predecessor))
; a Stäbchen is (make-Stäbchen struct)
; interp. one of two possible "Maschen" after a Anfangsschlinge


(define-struct Häkelreihe (masche))
; a Häkelreihe is (make-Häkelreihe struct)
; interp. a line of "Maschen"

; a certain Häkelreihe ("-ox|x|=|x|x|")
(define SOME-HÄKELREIHE
  (cons (make-Anfangsschlinge)
        (cons (make-Luftmasche)
              (cons (make-Luftmasche)
                    (cons (make-Stäbchen)
                          (cons (make-Luftmasche)
                                (cons (make-Luftmasche) empty)
                                )
                          )
                    )
              )
        )
  )

(define (masche-list-h masche l)
  (cond
    [?


(define (masche->string-h masche s)
  (cond
    [(empty? masche) s]
    [(Anfangsschlinge? (first masche)) (masche->string-h (rest masche) (string-append s "-o"))]
    [(Luftmasche? (first masche)) (masche->string-h (rest masche) (string-append s "x|"))]
    [(Stäbchen? (first masche)) (masche->string-h (rest masche) (string-append s "=|"))]                                  
    [else false]
    )
  )

; Masche -> string
; produces a string representing a "Häkelreihe" with given Masche
(define (masche->string masche)
  (masche->string-h masche "")
  )

(masche->string SOME-HÄKELREIHE)

