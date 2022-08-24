;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A3) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;Mindestpunkte is one of the following
; - 15
; - 50
; - 90
; - 120
; - -1
; interp. each number as minimum points to be played

; Number -> Number
; computes the points needed to play

(check-expect (mindestPunkte 0) 15)
(check-expect (mindestPunkte 1234) 50)
(check-expect (mindestPunkte 2345) 90)
(check-expect (mindestPunkte 4567) 120)
(check-expect (mindestPunkte 5000) -1)
(check-expect (mindestPunkte -1) -1)

;(define (mindestPunkte partiePunkte)
;  (cond
;    [(= partiePunkte 0) ...]
;    [(<= partiePunkte 1495) ...]
;    [(<= partiePunkte 2995) ...]
;    [(< partiePunkte 5000) ...]
;    [else ...]
;    )
;  )



(define (mindestPunkte partiePunkte)
  (cond
    [(= partiePunkte 0) 15]
    [(<= partiePunkte 1495) 50]
    [(<= partiePunkte 2995) 90]
    [(< partiePunkte 5000) 120]
    [else -1]
    )
  )

;Kartenwert is one of the following:
; - 5
; - 10
; - 20
; - 50
; - -1
; interp. the value of a Card

; String -> Number
; computes the value of given Card

(check-expect (kartenwert "Ass") 20)
(check-expect (kartenwert "Joker") 50)
(check-expect (kartenwert "Dame") 10)
(check-expect (kartenwert "Drei") 5)
(check-expect (kartenwert "A") -1)

;(define (kartenwert karte)
;  (cond
;    [(string? "Joker") ...]
;    [or (string? "Ass") (string? "Zwei") ...]
;    [or (string? "Zehn") (string? "Acht") (string? "Neun")
;        (string? "Bube") (string? "Dame") (string? "Koenig") ...]
;    [or (string? "Sieben") (string? "Sechs") (string? "Fünf")
;        (string? "Vier") (string? "Drei") ...]
;    [else ...]
;    )
;  )

(define (kartenwert karte)
  (cond
    [(string? "Joker") 50]
    [(or (string? "Ass") (string? "Zwei")) 20]
    [(or (string? "Zehn") (string? "Acht") (string? "Neun")
        (string? "Bube") (string? "Dame") (string? "Koenig")) 10]
    [(or (string? "Sieben") (string? "Sechs") (string? "Fünf")
        (string? "Vier") (string? "Drei")) 5]
    [else -1]
    )
  )