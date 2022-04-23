;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A24) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; berechne ein Bild, das aus 4 Viertelkreisen in den Ecken
; und einem vollen Kreis in der Mitte einer 100x100 Szene
; jeweils in der angegebenen Farbe color besteht.


(define UPPER 100)
(define CENTER (/ UPPER 2))
(define LOWER 0)

(define (draw r color )
(place-image (circle r "solid" color) LOWER LOWER
(place-image (circle r "solid" color) UPPER LOWER
(place-image (circle r "solid" color) UPPER UPPER
(place-image (circle r "solid" color) LOWER UPPER
(place-image (circle r "solid" color) CENTER CENTER
(empty-scene UPPER UPPER))))))
)
(draw 20 "red")