;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A11) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(define (max3 a b c)
  (if (> a b)
      (if (> a c) a c)
      (if (> b c) b c)
      )
  )

(define (rome num)
  (cond
    [(= num 1) "I"]
    [(= num 2) "II"]
    [(= num 3) "III"]
    [(= num 4) "IV"]
    [(= num 5) "V"]
    [(= num 6) "VI"]
    [(= num 7) "VII"]
    [(= num 8) "VIII"]
    [(= num 9) "IX"]
    [(> num 9) "Nicht implementiert"]
    )
  )

(rome 11)