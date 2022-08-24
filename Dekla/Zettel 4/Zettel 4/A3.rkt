;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A3) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; 1. Informationsrepräsentation:

; A crCnsmptn aka carConsumption is one of:
; - "8 Liter pro 100 Km"
; - "10 Liter pro 100 Km"
; - a Number representing a linear growing fuel consumption
; - false

; 2. Signatur

; Number -> crCnsmptn
; computes a cars fuel consumption with given speed.
; If Number <= 0 it returns false
;(define (crCnsmptn speed)0)  auskommentiert, da sonst zu Definitions-Problemen führt :D

; 3. Tests

(check-expect (crCnsmptn 0) false)
(check-expect(crCnsmptn 120) "8 Liter pro 100 Km")
(check-expect(crCnsmptn 160) "10 Liter pro 100 Km")
(check-expect(crCnsmptn 170) 10.55)

; 4. Aufteilen der Haupfunktion

;(define (crCnsmtn speed)      auskommentiert, da sonst zu Definitions-Problemen führt :D
;  (cond
;    [(and(<= speed 120)(> speed 0))...]
;    [(and(> speed 120)(<= speed 160))...]
;    [(> speed 160)...]))

; 5. Funktionsbody implementieren

(define (crCnsmptn speed)
  (cond
    [(and(<= speed 120)(> speed 0)) "8 Liter pro 100 Km"]
    [(and(> speed 120)(<= speed 160))"10 Liter pro 100 Km"]
    [(> speed 160)(+ 10 (*(/ (- speed 160) 10) 0.55))]
    [else false]))