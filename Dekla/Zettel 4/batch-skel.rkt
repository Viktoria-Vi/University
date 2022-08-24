;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname batch-skel) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(require racket/base)
(require racket/date)

; Number -> StringOrFalse
; Computes a String represenation of the the given file size in
; Byte, KB (multiples of 1024) or MB (multiples of 1024^2),
; rounded down to the next smaller integer. Consider the function
; "quotient" for this purpose. The larget unit (Byte, KB, MB)
; is chosen such that the computed number is > 0.
; If the size is 0, the unit Byte is chosen.
; This funtion returns false if a negative number is provided.

(define (sizeWithUnit size)
  (... sizeWithUnit ...))
  
; vector -> vector
; retrieves the current command-line arguments
(define args (current-command-line-arguments))

; This program expects three command-line arguments representig
; a valid date and prints the current age.
; Example: racket batch-skel.rkt 1 5 1992
(if (= (vector-length args) 1)
    (display (sizeWithUnit
              (string->number (vector-ref args 0))
              ))
    (error "Bitte genau einen Parameter uebergeben"))
