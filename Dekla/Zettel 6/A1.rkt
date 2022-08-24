;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Start

; (PROG) env = {}

; (PROG) env = {
(define-struct student (name firstname matr-no))
;}

; (PROG) env = {
(define-struct student (name firstname matr-no))
(define (app e1 e2)
  (cond
    [(and (string? e1) (string? e2)) (string-append e1 " " e2)]
    [(and (string? e1) (number? e2)) (string-append e1 " "
                                                    (number->string e2))]
    [(and (number? e1) (string? e2)) (string-append
                                      (number->string e1) " " e2)]
    [(and (number? e1) (number? e2)) (string-append
                                      (number->string e1) " "
                                      (number->string e2))]
    [true "Error"]))
;}

; (PROG) env = {
(define-struct student (name firstname matr-no))
(define (app e1 e2)
  (cond
    [(and (string? e1) (string? e2)) (string-append e1 " " e2)]
    [(and (string? e1) (number? e2)) (string-append e1 " "
                                                    (number->string e2))]
    [(and (number? e1) (string? e2)) (string-append
                                      (number->string e1) " " e2)]
    [(and (number? e1) (number? e2)) (string-append
                                      (number->string e1) " "
                                      (number->string e2))]
    [true "Error"]))
(define MAX (make-student "Mustermann" "Max" 12345))
;}

; (CONST) 
; e = (make-student "Mustermann" "Max" 12345)

; (STRUCT-make)
; e = <make-student "Mustermann" "Max" 12345>

; (PROG) env = {
(define-struct student (name firstname matr-no))
(define (app e1 e2)
  (cond
    [(and (string? e1) (string? e2)) (string-append e1 " " e2)]
    [(and (string? e1) (number? e2)) (string-append e1 " "
                                                    (number->string e2))]
    [(and (number? e1) (string? e2)) (string-append
                                      (number->string e1) " " e2)]
    [(and (number? e1) (number? e2)) (string-append
                                      (number->string e1) " "
                                      (number->string e2))]
    [true "Error"]))
(define MAX <make-student "Mustermann" "Max" 12345>)
;}

; (PROG)
; e = (app (student-name MAX) (student-matr-no MAX)) zerfällt in
; E = (app (student-name [LOCH])(student-matr-no MAX)) und e-1 = MAX

; (CONST)
; MAX --> <make-student "Mustermann" "Max" 12345>

; (KONG)
; e -> (app(student-name <make-student "Mustermann" "Max" 12345>)(student-matr-no MAX))
; zerfällt in E = (app ([LOCH]) (student-matr-no MAX))
; und e-1 = (student-name <make-student "Mustermann" "Max" 12345>)

; (STRUCT-select) e-1 -> "Mustermann"

; (KONG) --> e = (app "Mustermann" (student-matr-no MAX))

; (PROG)
; e = (app "Mustermann" (student-matr-no MAX)) zerfällt in
; E = (app "Mustermann" (student-matr-no [LOCH]))

; (CONST)
; MAX --> <make-student "Mustermann" "Max" 12345>

; (KONG)
; e --> (app "Mustermann" (student-matr-no <make-student "Mustermann" "Max" 12345>))
; zerfällt in E = (app "Mustermann" ([LOCH]))
; und e-1 = (student-matr-no <make-student "Mustermann" "Max" 12345>)

; (STRUCT-select) e-1 -> "12345"

; (KONG)
; e --> (app "Mustermann" "12345")

; (FUN)
; (app "Mustermann" "12345") -->
;(cond
;    [(and (string? "Mustermann") (string? "12345")) (string-append "Mustermann" " " "12345")]
;    [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;    [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;    [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;    [true "Error"]))

; e =
;  (cond
;      [(and (string? "Mustermann") (string? "12345")) (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))

; zerfällt in  E =
;  (cond
;      [(and ([LOCH]) (string? "12345")) (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))
; und e-1 = (string? "Mustermann").

; (PRIM) e-1 = true

; (KONG) e -->
;  (cond
;      [(and true (string? "12345")) (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))

; zerfällt in E =
;  (cond
;      [(and true ([LOCH])) (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))
; und e-1 = (string? "12345")

; (PRIM) e-1 = true

; (KONG) e -->
;  (cond
;      [(and true true) (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))

; zerfällt in E =
;  (cond
;      [([LOCH]) (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))
; und e-1 = (and true true)

; (AND-1) e-1 = true

; (KONG) e -->
;  (cond
;      [true (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))

; (COND-True)
;  (cond
;      [true (string-append "Mustermann" " " "12345")]
;      [(and (string? "Mustermann") (number? "12345")) (string-append "Mustermann" " "
;                                                    (number->string "12345"))]
;      [(and (number? "Mustermann") (string? "12345")) (string-append
;                                      (number->string "Mustermann") " " "12345")]
;      [(and (number? "Mustermann") (number? "12345")) (string-append
;                                      (number->string "Mustermann") " "
;                                      (number->string "12345"))]
;      [true "Error"]))
; --> (string-append "Mustermann" " " "12345")

; (PRIM)
; (string-append "Mustermann" " " "12345") --> "Mustermann 12345"