;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname testen) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;03.3 a)
; Number Number -> String
; Erzeugt einen String der Länge width, in dem die Ganzzahl n rechts ausgerichtet
; ist. Wird für n eine negative Zahl angegeben, gibt die Funktion den String
; "zu klein" zurück. Wird eine Zahl mit drei oder mehr Stellen für n angegeben,
; oder hat die Zahl n mehr Stellen als width, so gibt die Funktion den String
; "zu gross" zurück.

(define (justify-right n width)
   (if (< n 0)
      "zu klein"
      (if (and (< n 10) (>= width 1))
         (string-append
            (replicate (- width 1) " ")
            (number->string n))
         (if (and (< n 100) (>= width 2))
            (string-append
               (replicate (- width 2) " ")
               (number->string n))
            "zu gross"))))

(check-expect (justify-right 9 1) "9")
(check-expect (justify-right -1 12) "zu klein")
(check-expect (justify-right  100 12) "zu gross")
(check-expect (justify-right 9 5) "    9")




;03.3 b)
; Number Number Number -> Number
; Berechnet für eine Farbe im RGB-Farbraum (Red-Green-Blue) die 'value'
; Komponente der Farbe im HSV-Farbraum (Hue-Saturation-Value).
; Dabei entspricht der value in HSV dem maximalen Wert einer der Komponenten
; Rot (r), Grün (g) oder Blau (b) in RGB.

(define (rgb->value r g b)
   (cond 
      [(and (>= r g) (>= r b)) r]
      [(and (>= g r) (>= g b)) g]
      [(and (>= b r) (>= b g)) b]))

(check-expect (rgb->value 0 0 0) 0)
(check-expect (rgb->value 0 0 255) 255)
(check-expect (rgb->value 0 5 0) 5)
(check-expect (rgb->value 1312 0 0) 1312) ;this shouldnt work ;)


