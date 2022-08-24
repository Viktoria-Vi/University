;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname A2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Start

; (PROG) env = {}

; (PROG) env = {
(define-struct hero (supername realname race))
;}

; (PROG) env = {
(define-struct hero (supername realname race))
(define (reveal hero)
  (cond
    [(string=? (hero-race hero) "Martian") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from Mars.")]
    [(string=? (hero-race hero) "Kryptonian") (string-append
                                               (hero-supername hero) " is " (hero-realname hero)
                                               " from Krypton.")]
    [(string=? (hero-race hero) "Timelord") (string-append
                                             (hero-supername hero) " is " (hero-realname hero)
                                             " from Gallifrey.")]
    [(string=? (hero-race hero) "New God") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from New Genesis.")]
    [(string=? (hero-race hero) "Sayajin") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from Vegeta.")]
    [(string=? (hero-race hero) "Old One") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from R’lyeh.")]
    [true (string-append (hero-supername hero) " is "
                         (hero-realname hero) " from Earth.")]))
;}

; (PROG) env = {
(define-struct hero (supername realname race))
(define (reveal hero)
  (cond
    [(string=? (hero-race hero) "Martian") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from Mars.")]
    [(string=? (hero-race hero) "Kryptonian") (string-append
                                               (hero-supername hero) " is " (hero-realname hero)
                                               " from Krypton.")]
    [(string=? (hero-race hero) "Timelord") (string-append
                                             (hero-supername hero) " is " (hero-realname hero)
                                             " from Gallifrey.")]
    [(string=? (hero-race hero) "New God") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from New Genesis.")]
    [(string=? (hero-race hero) "Sayajin") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from Vegeta.")]
    [(string=? (hero-race hero) "Old One") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from R’lyeh.")]
    [true (string-append (hero-supername hero) " is "
                         (hero-realname hero) " from Earth.")]))
(define THEDOCTOR (make-hero "The Doctor" "Unkown" "Timelord"))
;}

; (CONST) 
; e = (make-hero "The Doctor" "Unkown" "Timelord");

; (STRUCT-make)
; e = <make-hero "The Doctor" "Unkown" "Timelord">

; (PROG) env = {
(define-struct hero (supername realname race))
(define (reveal hero)
  (cond
    [(string=? (hero-race hero) "Martian") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from Mars.")]
    [(string=? (hero-race hero) "Kryptonian") (string-append
                                               (hero-supername hero) " is " (hero-realname hero)
                                               " from Krypton.")]
    [(string=? (hero-race hero) "Timelord") (string-append
                                             (hero-supername hero) " is " (hero-realname hero)
                                             " from Gallifrey.")]
    [(string=? (hero-race hero) "New God") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from New Genesis.")]
    [(string=? (hero-race hero) "Sayajin") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from Vegeta.")]
    [(string=? (hero-race hero) "Old One") (string-append
                                            (hero-supername hero) " is " (hero-realname hero)
                                            " from R’lyeh.")]
    [true (string-append (hero-supername hero) " is "
                         (hero-realname hero) " from Earth.")]))
(define THEDOCTOR <make-hero "The Doctor" "Unkown" "Timelord">)
;}

; (FUN)
; (reveal <make-hero "The Doctor" "Unknown" "Timelord">) -->
; (cond
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Martian") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Mars.")]
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Kryptonian") (string-append
;                                               (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                               " from Krypton.")]
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Timelord") (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                             " from Gallifrey.")]
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "New God") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from New Genesis.")]
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Sayajin") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Vegeta.")]
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Old One") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from R’lyeh.")]
;    [true (string-append (hero-supername hero) " is "
;                         (hero-realname hero) " from Earth.")]))

; e = (cond
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Martian") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Mars.")]
;    [...]
; zerfällt in
; E = (cond
;    [(string=? ([LOCH]) "Martian") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Mars.")]
;    [...]
; und e-1 = (hero-race <make-hero "The Doctor" "Unknown" "Timelord">)

; (STRUCT-select) e-1 = "Timelord"

; (KONG) e =
;  (cond
;    [(string=? "Timelord" "Martian") (string-append
;                                            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Mars.")]
;    [...]

; zerfällt in E =
;  (cond
;    [([LOCH]) (string-append
;                  (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                  " from Mars.")]
;    [...]
; und e-1 = (string=? "Timelord" "Martian")

;(PRIM) e-1 = false

; (KONG) e =
;  (cond
;    [false (string-append
;               (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;               " from Mars.")]
;    [...]

; (COND-False) e =
;  (cond
;     [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Kryptonian") (string-append
;                                               (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)" from Krypton.")]
;     [...]

; zerfällt in E =
;  (cond
;     [(string=? ([LOCH]) "Kryptonian") (string-append
;                                               (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)" from Krypton.")]
;     [...]

; und e-1 = (hero-race <make-hero "The Doctor" "Unknown" "Timelord">)

; (STRUCT-select) e-1 = "Timelord"

; (KONG) e =
;  (cond
;     [(string=? "Timelord" "Kryptonian") (string-append
;                                               (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)" from Krypton.")]
;     [...]

;zerfällt in E =
;  (cond
;     [[LOCH] (string-append
;                      (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)" from Krypton.")]
;     [...]
; und e-1 = (string=? "Timelord" "Kryptonian")

; (PRIM) e-1 = false

; (KONG) e =
;  (cond
;     [false (string-append
;                                               (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)" from Krypton.")]
;     [...]

; (COND-False) e =
;  (cond
;    [(string=? (hero-race <make-hero "The Doctor" "Unknown" "Timelord">) "Timelord") (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Gallifrey.")]
;    [...]

; zerfällt in E =
;  (cond
;    [(string=? ([LOCH]) "Timelord") (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Gallifrey.")]
;    [...]
; und e-1 = (hero-race <make-hero "The Doctor" "Unknown" "Timelord">)

; (STRUCT-select) e-1 = "Timelord"

; (KONG) e =
;  (cond
;    [(string=? "Timelord" "Timelord") (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Gallifrey.")]
;    [...]

;zerfällt in E =
;  (cond
;    [[LOCH] (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Gallifrey.")]
;    [...]
;und e-1 = (string=? "Timelord" "Timelord")

; (PRIM) e-1 = true

; (KONG) e =
;  (cond
;     [true (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Gallifrey.")]
;    [...]

; (COND-True)
;  (cond
;     [true (string-append
;                                             (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)
;                                            " from Gallifrey.")]
;    [...]
; -->(string-append(hero-supername <make-hero "The Doctor" "Unknown" "Timelord">) " is " (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">) " from Gallifrey.")

; (KONG) e = (string-append
;            (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">)
;             " is "
;            (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">) " from Gallifrey.")

; zerfällt in E =
;            (string-append
;            ([LOCH])
;             " is "
;            (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">) " from Gallifrey.")
; und e-1 = (hero-supername <make-hero "The Doctor" "Unknown" "Timelord">)

; (STRUCT-select) e-1 = "The Doctor"

; (KONG) e =
;            (string-append
;             "The Doctor"
;             " is "
;            (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">) " from Gallifrey.")

; zerfällt in E =
;            (string-append
;             "The Doctor"
;             " is "
;            ([LOCH]) " from Gallifrey.")
; und e-1 = (hero-realname <make-hero "The Doctor" "Unknown" "Timelord">)

; (STRUCT-select) e-1 = "Unknown"

; (KONG) e =
;            (string-append
;             "The Doctor"
;             " is "
;            "Unknown" " from Gallifrey.")

; (PRIM) 
;            (string-append
;             "The Doctor"
;             " is "
;            "Unknown" " from Gallifrey.")
; --> "The Doctor is Unknown from Gallifrey."