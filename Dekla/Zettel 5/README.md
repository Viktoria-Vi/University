;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define-struct Zweirad)
; A Zweirad is a vehicle
; interp. as vehicle with two tires that can cross every bridge.

(define-struct ZweiAchser (x y))
; A ZweiAchser is (make-ZweiAchser Number Number)
; interp. a LKW with two axis and their weight.

(define-struct PKW (weight))
; A PKW is (make-PKW Number)
; interp. a PKW and its maxweight

(define-struct DreiAchser (x y z))
; A DreiAchser is (make-DreiAchser Number Number Number)
; interp. a LKW with three axis and their weight.

; A vehicle is eighter:
; - a PKW
; - a Zweirad
; - a ZweiAchser
; - a DreiAchser
; interp. a vehicle representing a PKW, LKW with 2 or 3 axis, or Zweirad.

; vehicle Number -> boolean
; interp. returns true if given vehicle is a car and is light enough to cross a certain bridge.
(define (PKW?-Light-Enough? vehicle max-punctual-weight)
  if (and (PKW? vehicle)
          (< weigth max-puncutal-weight))
    true
      false)

; vehicle Number -> boolean
; interp. returns true if given vehicle is a ZweiAchser and is light enough to cross a certain bridge.
(define (ZweiAchser?-Light-Enough?`vehicle max-punctual-weight)
  if(and (ZweiAchser? vehicle)
         (< x max-punctual-weight)
         (< y max-punctual-weight))
    true
      false)

; vehicle Number -> boolean
; interp. returns true if given vehicle is a DreiAchser and is light enough to cross a certain bridge.
(define(DreiAchser?-Light-Enough? vehicle max-punctual-weight)
  if(and (DreiAchser? vehicle)
         (< x max-punctual-weight)
         (< y max-punctual-weight)
         (< z max-punctual-weight))
    true
      false)

; vehicle Number -> boolean
; determines wheather a vehicle is to heavy to cross a bridge
(check-expect(darf-passieren PKW 200) false)
(check-expect(darf-passieren PKW 2000) true)
(check-expect(darf-passieren ZweiAchser 16000) true)
(check-expect(darf-passieren DreiAchser 200) false)
(check-expect(darf-passieren Zweirad) true)

(define (darf-passieren vehicle max-punctual-weight)
  (cond
    [(Zweirad? vehicle)
     true]
    [(PKW?-Light-Enough? vehicle max-punctual-weight)
     true]
    [(ZweiAchser?-Light-Enough? vehicle max-punctual-weight)
     true]
    [(DreiAchser?-Light-Enough? vehicle max-punctual-weight)
     true]
    [else false]))