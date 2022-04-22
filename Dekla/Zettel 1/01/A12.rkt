;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A12) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(+ 5 7 9)
(+ 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
(= (string-length "(+ 1 2)") 3)
(string-append "Sommersemester " (number->string 2022))

;a)
(+ (* 4 (- 15 5)) (/ 12 6))
(+ (* 4 10) (/ 12 6))
(+ (* 4 10) 2)
(+ 40 2)
42

;b)
(* (string->number "4") (- 33 (string-length "Spoilers")))
(* (string->number "4") (- 33 8))
(* (string->number "4") 25)
(* 4 25)
100

;c)
(and true (string->number "null"))
(and true false)
false

;d)
 (* (* 4 5) (string->number "5")) ;≡
(* (+ 3 7) (+ (string->number "5") 5))

(* (+ 3 7) (+ (string->number "5") 5))
(* 10 (+ (string->number "5") 5))
(* 10 (+ 5 5))
(* 10 10)
100
(* (* 4 5) 5)
(* (* 4 5) (string->number "5"));also äquivalent

;e)
 (+ (string-length "Programmiersprachen") 5) ;≡
(+ 12 (string-length (replicate 5 "hi")))

(+ 12 (string-length (replicate 5 "hi")))
(+ 12 (string-length "hihihihihi"))
(+ 12 10)
22
(+ 17 5)
(+ (string-length "Programmiersprach") 5);also nicht äquivalent

;f)
(and (> 10 (string-length "abc")) (= (* 3 4) (+ 6 6))) ;≡
(and (< (string-length "abc") 9) (= 12 (+ 6 6)))

(and (< (string-length "abc") 9) (= 12 (+ 6 6)))
(and (< (string-length "abc") 9) (= 12 12))
(and (< (string-length "abc") 9) true)
(and (< 3 9) true)
(and true true)
(and (> 10 3) true)
(and (> 10 3) (= 12 12))
(and (> 10 3) (= (* 3 4) 12))
(and (> 10 3) (= (* 3 4) (+ 6 6)))
(and (> 10 (string-length "abc")) (= (* 3 4) (+ 6 6))) ;also äquivalent












