;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A3) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define SAMPLE_PRED
  (make-DisjunctionClause SAMPLE-CONJ SAMPLE-CONJC))
; Predicate is one of:
; - DisjunctionClause
; - Conjunction

; Conjunction is one of:
; - ConjunctionClause
; - literal
; interp. as "And"-Expression or literal 

; A literal is one of:
; - #true
; - #false

(define SAMPLE-CONJ #t)
(define SAMPLE-CONJC (make-ConjunctionClause #f #t))


(define-struct DisjunctionClause (c1 c2))
; DisjunctionClause is a (make-DisjunctionClause Conjunction Conjunction)
; interp. as "Or"-Expression
  
(define-struct ConjuntionClause (literal1 literal2))
; ConjunctionClause is a (make-ConjuntionClause literal literal)
; interp. as "And"-Expression


(define (eval predicate))