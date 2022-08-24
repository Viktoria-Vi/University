;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname A1) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (sqrt/nat x)
  (local [(define (sqrt/above x t)
            (if (> (* t t) x) ;terminiert hier
                (sub1 t) ;Ausgabe nach terminierung
                (sqrt/above x (add1 t))))]
    (sqrt/above x 1)))

;gernerative Rek. da mit t + 1 immer ein kleineres Teilproblem auferufen wird